alias ssh-ws='sshpass -p "$(pass show ssh/wit/stage)" ssh witfujdd@wit-demo.com.cloud6-vm231.de-nserver.de'
alias ssh-wd='sshpass -p "$(pass show ssh/wit/demo)" ssh witfxsrw@wit-demo-dev.com.cloud3-vm648.de-nserver.de'
alias ssh-wr='sshpass -p "$(pass show ssh/wit/release)" ssh witsxtmf@wit-release.com.cloud3-vm648.de-nserver.de'
alias ssh-wdp='sshpass -p "$(pass show ssh/wit/deployment)" ssh witxbhku@wit-deployment.com.cloud3-vm648.de-nserver.de'

alias ssh-vs='sshpass -p "$(pass show ssh/vollmer/stage)" ssh volmpxkk@vollmer-stage.com.cloud6-vm231.de-nserver.de'
alias ssh-vl='sshpass -p "$(pas show ssh/vollmer/live)" ssh volskjjr@vollmer.com.cloud6-vm231.de-nserver.de'
alias ssh-fs='sshpass -p "$(pass show ssh/fulminant/stage)" ssh fulfxbwp@fulminant.com.cloud3-vm648.de-nserver.de'
alias ssh-fl='sshpass -p "$(pass show ssh/fulminant/live)" ssh fulkwheb@fulminant.com.cloud6-vm231.de-nserver.de'
alias ssh-kl='sshpass -p "$(pass show ssh/kuhnert/live)" ssh kuhwtptx@cloud5-vm540.de-nserver.de'
alias ssh-bs='sshpass -p "$(pass show ssh/bekuplast/stage)" ssh bekdmcyb@bekuplast-stage.com.cloud6-vm231.de-nserver.de'
alias ssh-bl='sshpass -p "$(pass show ssh/bekuplast/live)" ssh ssh-fnla6t@a-x8s0vh@ssh.fiestel.project.host'
alias ssh-js='sshpass -p "$(pass show ssh/juliwa-hesa/stage)" ssh juloeomo@juliwa-hesa-stage.com.cloud6-vm231.de-nserver.de'
alias ssh-jl='sshpass -p "$(pass show ssh/juliwa-hesa/live)" ssh juluwrod@juliwa-hesa.com.cloud6-vm231.de-nserver.de'
alias ssh-as='sshpass -p "$(pass show ssh/allgaier/stage)" ssh allqenvq@allgaier-stage.com.cloud6-vm231.de-nserver.de'
alias ssh-3gs='sshpass -p "$(pass show ssh/3g/stage)" ssh php-schmiede-dev.com_1ysi5fez2ij@213.202.244.164'
alias ssh-frs='sshpass -p "$(pass show ssh/frega/stage)" ssh freuufea@frega-stage.com.cloud6-vm231.de-nserver.de'

alias scp-ws='function scp_alias(){ sshpass -p "$(pass show ssh/wit/stage)" scp -r witfujdd@wit-demo.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-wd='function scp_alias(){ sshpass -p "$(pass show ssh/wit/demo)" scp -r witfxsrw@wit-demo-dev.com.cloud3-vm648.de-nserver.de:$1 $2; }; scp_alias'
alias scp-wr='function scp_alias(){ sshpass -p "$(pass show ssh/wit/release)" scp -r witsxtmf@wit-release.com.cloud3-vm648.de-nserver.de:$1 $2; }; scp_alias'
alias scp-wdp='function scp_alias(){ sshpass -p "$(pass show ssh/wit/deployment)" scp -r witxbhku@wit-deployment.com.cloud3-vm648.de-nserver.de:$1 $2; }; scp_alias'

alias scp-vs='function scp_alias(){ sshpass -p "$(pass show ssh/vollmer/stage)" scp -r volmpxkk@vollmer-stage.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-vl='function scp_alias(){ sshpass -p "$(pass show ssh/vollmer/live)" scp -r volskjjr@vollmer.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-fs='function scp_alias(){ sshpass -p "$(pass show ssh/fulminant/stage)" scp -r fulfxbwp@fulminant.com.cloud3-vm648.de-nserver.de:$1 $2; }; scp_alias'
alias scp-fl='function scp_alias(){ sshpass -p "$(pass show ssh/fulminant/live)" scp -r fulkwheb@fulminant.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-kl='function scp_alias(){ sshpass -p "$(pass show ssh/kuhnert/live)" scp -r kuhwtptx@cloud5-vm540.de-nserver.de:$1 $2; }; scp_alias'
alias scp-bs='function scp_alias(){ sshpass -p "$(pass show ssh/bekuplast/stage)" scp -r bekdmcyb@bekuplast-stage.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-bl='function scp_alias(){ sshpass -p "$(pass show ssh/bekuplast/live)" scp -r ssh-fnla6t@a-x8s0vh@ssh.fiestel.project.host:$1 $2; }; scp_alias'
alias scp-js='function scp_alias(){ sshpass -p "$(pass show ssh/juliwa-hesa/stage)" scp -r juloeomo@juliwa-hesa-stage.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-jl='function scp_alias(){ sshpass -p "$(pass show ssh/juliwa-hesa/live)" scp -r juluwrod@juliwa-hesa.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-as='function scp_alias(){ sshpass -p "$(pass show ssh/allgaier/stage)" scp -r allqenvq@allgaier-stage.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'
alias scp-3gs='function scp_alias(){ sshpass -p "$(pass show ssh/3g/stage)" scp -r php-schmiede-dev.com_1ysi5fez2ij@213.202.244.164:$1 $2; }; scp_alias'
alias scp-as='function scp_alias(){ sshpass -p "$(pass show ssh/frega/stage)" scp -r freuufea@frega-stage.com.cloud6-vm231.de-nserver.de:$1 $2; }; scp_alias'

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

alias bcf='_command="./bin/console $(./bin/console --format=json | jq -r ".commands | .[] | .name" | fzf) "; echo -n "$_command"; read; echo -n "$_command$REPLY" | clip.exe; eval "$_command$REPLY"'

alias 10="(cd ~/shopware/sandbox/10/; nvim .)"
alias 20="(cd ~/shopware/sandbox/20/; nvim .)"
alias 2066="(cd ~/shopware/sandbox/2066/; nvim .)"

alias pycli="python ~/shopware/cli/pycli.py"
alias pycli-test="python ~/shopware/cli/pycli_test.py"

alias lg="lazygit"
