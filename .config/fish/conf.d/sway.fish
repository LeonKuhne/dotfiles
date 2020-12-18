# running from tty1; start sway
set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  exec sway
end

# exports
set -Ux TOOLS "/home/id/Projects/tools"

# LEEES CD SCRIPT
function c
  cd $argv

  set file .cd
  if test -f $file
    source $file
  end
end

# LEEES GIT SYNC SCRIPT
function geet
  git add . && git commit -m "$argv" && git push
end

function todo
  /home/id/Projects/todo/todo.sh $argv
end

set -Ux STYLES "/home/id/Projects/reStyles"
set -Ux EPIPHANY_SCRIPT "/home/id/.local/share/epiphany/user-javascript.js"
function styles
  cd $STYLES
  vim styles.json
  
  # combine stylesheets
  cp script.js $EPIPHANY_SCRIPT
  set styleData (jq -c "." styles.json)
  sed -i "s/const localData = {}/const localData = $styleData/" $EPIPHANY_SCRIPT
  echo "Saving..."
  git add styles.json
  git commit -m "autosaving styles" -q
  git push -q
  cd -
end

# LEEES RESUDO SCRIPT
function fuck
  eval command sudo $history[1]
end

# aliases
function yom
  nohup python /home/id/Projects/yom/__main__.py & exit
end

# abbreviations
abbr o "xdg-open"
abbr cd "c"
abbr py "python"
abbr rit "sudo openconnect --protocol=anyconnect vpn.rit.edu"
abbr hell "ssh x@172.245.158.116"

bash -c "~/.bashrc"

cat ~/.new
echo
c .

