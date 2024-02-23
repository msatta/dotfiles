# Setup Git in local

## Requirements
git, gpg

## Generate GPG key
`gpg --full-generate-key`

select 4096, 12m as expiration and the github email (user@users.noreply.github.com)

## Setup key in local git
Extract the key id:
`gpg --list-secret-keys --keyid-format LONG`

Locate and save the key ID
`sec   rsa4096/KEY_ID ...`

```
git config --global user.signingkey KEY_ID 
git config --global commit.gpgsign true
git config --global user.name "Name Surname"
git config --global user.email user@users.noreply.github.com
```

## Add Key to GitHub
`gpg --armor --export KEY_ID`

copy and paste the key into [github](https://github.com/settings/gpg/new)



