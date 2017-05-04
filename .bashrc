[ -r ~/.commonrc ] && source ~/.commonrc

# Bash-specific calls here
[ -z "$PS1" ] && return; # Not interactive, bail

hash aws_completer 2>/dev/null && complete -C aws_completer aws
true # if aws_completer is not available, hash returns 1. We don't want that
     # returned to the shell
