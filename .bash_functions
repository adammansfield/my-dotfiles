function mdv() {
  markdown.pl $1 | lynx -stdin
}

# rename multiple files
# ls -d *.php3 | sed 's/\(.*\).php3$/mv "&" "\1.php"/' | sh
