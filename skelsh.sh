#!/bin/bash
# Shell script to setup a skeleton shell script

cd ~/src/shell || exit 1
mkdir "$1" || exit 1
cd "$1" || exit 1
cat <<EOF > $1.sh
#!/bin/bash
# $1.sh

# vim: set ft=sh ts=4 sw=4 et:
EOF
echo -e "*~\n*.o\n*.swp" > .gitignore || exit 1
git init || exit 1
git add . || exit 1
git commit -a -m "Initial commit" || exit 1

# vim: set ft=sh ts=4 sw=4 et:
