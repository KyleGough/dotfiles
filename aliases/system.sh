#!/usr/bin/zsh

alias battery="acpi -b | sed -ne 's/Battery 0.* \([0-9]*\)%/\1/p'"
