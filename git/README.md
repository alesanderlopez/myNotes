# Git

## Basic

```bash
git config --global user.name "Alesander López"
git config --global user.email "EMAIL"
git config --global color.ui true
git config --global core.editor "vim"
```

## Add all and rm's files

```bash
git add -A
```

## Git by ssh

```bash
ssh-keygen -t rsa -b 4096
git remote set-url origin git@github.com:alesanderlopez/myNotes.git
```

## add origin 

```bash
git remote add origin git@github.com:alesanderlopez/myNotes.git
```

## fusion

```bash
git checkout master
git merge dev
```