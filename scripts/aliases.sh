alias swc='rm -rf var/cache/ && bin/console cache:clear'
alias bc='bin/console'
alias pr='bin/console plugin:refresh'
alias pi='bin/console plugin:install'
alias pia='bin/console plugin:install --activate'
alias pu='bin/console plugin:uninstall'
alias pa='bin/console plugin:activate'
alias pda='bin/console plugin:deactivate'
alias bb='bin/build-js.sh'
alias bbs='bin/build-storefront.sh'
alias bba='bin/build-administration.sh'
alias bws='bin/watch-storefront.sh'
alias bwa='bin/watch-administration.sh'

alias mrp="bin/console VIT-Core:DynamicMapper:ResolvePath"
alias mrd="bin/console VIT-Core:DynamicMapper:ResolveData"
alias mi="bin/console VIT-Core:Run-Entity-Initializer"

alias bcf='_command="./bin/console $(./bin/console --format=json | jq -r ".commands | .[] | .name" | fzf) "; echo -n "$_command"; read; echo -n "$_command$REPLY" | xclip -selection clipboard; eval "$_command$REPLY"'

alias 10="(cd ~/shopware/sandbox/10/; nvim .)"
alias 20="(cd ~/shopware/sandbox/20/; nvim .)"
alias 2066="(cd ~/shopware/sandbox/2066/; nvim .)"

alias pycli="python ~/code/pycli/pycli.py"
alias pycli-test="python ~/code/pycli/pycli_test.py"

alias lg="lazygit"

alias tsf="~/dotfiles/scripts/tmux-sessionizer.sh"
alias sf=". ~/dotfiles/scripts/search-folder.sh"

alias c="xclip -selection clipboard"
