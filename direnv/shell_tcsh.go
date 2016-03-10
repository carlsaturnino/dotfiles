package main

import (
	"fmt"
	"strings"
)

type tcsh int

var TCSH tcsh

func (f tcsh) Hook() string {
	return "alias precmd 'eval `direnv export tcsh`' "
}

func (f tcsh) Escape(str string) string {
	if str == "" {
		return "''"
	}
	in := []byte(str)
	out := ""
	i := 0
	l := len(in)

	hex := func(char byte) {
		out += fmt.Sprintf("\\x%02x", char)
	}

	backslash := func(char byte) {
		out += string([]byte{BACKSLASH, char})
	}

	escaped := func(str string) {
		out += str
	}

	quoted := func(char byte) {
		out += string([]byte{char})
	}

	literal := func(char byte) {
		out += string([]byte{char})
	}

	for i < l {
		char := in[i]
		switch {
		case char == TAB:
			escaped(`\t`)
		case char == LF:
			escaped(`\n`)
		case char == CR:
			escaped(`\r`)
		case char == SPACE:
			backslash(char)
		case char <= US:
			hex(char)
		case char <= AMPERSTAND:
			quoted(char)
		case char == SINGLE_QUOTE:
			backslash(char)
		case char <= PLUS:
			quoted(char)
		case char <= NINE:
			literal(char)
		case char <= QUESTION:
			quoted(char)
		case char <= LOWERCASE_Z:
			literal(char)
		case char == OPEN_BRACKET:
			quoted(char)
		case char == BACKSLASH:
			backslash(char)
		case char <= CLOSE_BRACKET:
			quoted(char)
		case char == UNDERSCORE:
			literal(char)
		case char <= BACKTICK:
			quoted(char)
		case char <= LOWERCASE_Z:
			literal(char)
		case char <= TILDA:
			quoted(char)
		case char == DEL:
			hex(char)
		default:
			hex(char)
		}
		i += 1
	}

	return out
}

func (f tcsh) Export(key, value string) string {
	if key == "PATH" {
		command := "set path = ("
		for _, path := range strings.Split(value, ":") {
			command += " " + f.Escape(path)
		}
		return command + " );"
	}
	return "setenv " + f.Escape(key) + " " + f.Escape(value) + ";"
}

func (f tcsh) Unset(key string) string {
	return "unsetenv " + f.Escape(key) + ";"
}
