#!/usr/bin/zsh 

# Encrypts a file using GPG.
gpg-encrypt() {
  newFile="$1.gpg"
  gpg --output $newFile --encrypt --recipient $GPG_EMAIL $1
  echo "File encrypted at: $(pwd)/$newFile"
}

# Decrypts a GPG file.
gpg-decrypt() {
  oldFile="$1.gpg"
  gpg --output $1 --decrypt $oldFile
  echo "==> File decrypted at $(pwd)/$1"
}