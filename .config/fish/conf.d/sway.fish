# running from tty1; start sway
set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  exec sway
end

# LEEES CD SCRIPT
function c
  cd $argv

  set file .cd
  if test -f $file
    source $file
  end
end

# LEEES GIT SYNC SCRIPT
function gup
  git add . && git commit -m "$argv" && git push
end


# aliases
alias o "xdg-open"
alias rit "sudo openconnect --protocol=anyconnect vpn.rit.edu"
alias hell "ssh x@172.245.158.116"

bash -c "~/.bashrc"

cat ~/.new
echo
c .

