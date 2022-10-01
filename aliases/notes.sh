#!/usr/bin/zsh

note () {
    # If file doesn't exist, create it.
    if [[ ! -f $HOME/Documents/.notes ]]; then
        touch "$HOME/Documents/.notes"
    fi

    if ! (($#)); then
        # If no arguments, print file.
        cat "$HOME/Documents/.notes"
    elif [[ "$1" == "-c" ]]; then
        # Clear contents of the file.
        printf "%s" > "$HOME/Documents/.notes"
    else
        # Add all arguments to file.
        printf "%s\n" "$*" >> "$HOME/Documents/.notes"
    fi
}
