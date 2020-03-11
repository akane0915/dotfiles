#!/bin/bash

# Aliases

# file path aliases
alias to:cabo="cd $HOME/opallabs/cabochon"
alias to:developer="cd $HOME/opallabs/cabochon/developer"
alias to:techdocs="cd $HOME/opallabs/cabochon/techdocs"
alias to:mono="cd $HOME/opallabs/cabochon/packages/monolith"
alias to:uni="cd $HOME/opallabs/cabochon/packages/universe"
alias to:lap="cd $HOME/opallabs/cabochon/packages/universe/packages/lapidary"
alias to:kuiper="cd $HOME/opallabs/cabochon/packages/universe/packages/kuiper"
alias to:tachyon="cd $HOME/opallabs/cabochon/packages/universe/packages/tachyon"

# # copies current git branch to clipboard
alias copy-branch="git branch | grep '^\*' | cut -d' ' -f2 | tr -d '\n' | pbcopy"

# Git helpers
alias git:local-branches='git branch --merged | grep -v "\\*"'
alias git:cleanup-local-branches='git branch --merged | grep -v "\\*" | xargs -n 1 git branch -d'

# misc
alias grepc='grep --color'
alias be="bundle exec"

# universe
alias testwatch="yarn test:files-watch"
alias sketchtool="$(mdfind kMDItemCFBundleIdentifier == 'com.bohemiancoding.sketch3' | head -n 1)/Contents/Resources/sketchtool/bin/sketchtool"

################################

# FOREMAN
alias foreman-web="cd $HOME/opallabs/cabochon && foreman start -m web=1"
alias foreman-universe="cd $HOME/opallabs/cabochon && foreman start -m universe=1"
alias start-juggernaut="cd $HOME/opallabs/cabochon && REDIS_HOST=localhost REDIS_PORT=6379 n use 5.2.0 packages/juggernaut/server.js --port $JUGGERNAUT_PORT"
alias foreman-other="cd $HOME/opallabs/cabochon && foreman start -m all=1,techdocs=0,storybook=0,snapshots=0,web=0,universe=0,io=0,hydra=0,juggernaut=0"
alias foreman-storybook="cd $HOME/opallabs/cabochon && foreman start -m storybook=1"

################################

# # DOCKER
# ​
# # remove all images from docker - frees up allocated hard drive space
alias run:docker-image-prune='docker image prune -af'
# ​
# # run rails migrations for docker container
alias run:rails-migrate='yarn docker:rails:migrate'
# ​
# # setup and run rails rspec test suite
alias run:rails-test-setup='yarn docker:rails:rspec:setup'
alias run:rails-test='yarn docker:rails:rspec'
# ​
# # Begin tailing logs for a docker service
alias log:monolith='docker service logs --raw --tail 500 -f opal_monolith'
alias log:monolith-setup='docker service logs --raw --tail 500 -f opal_monolith-setup'
alias log:universe='docker service logs --raw --tail 500 -f opal_universe'
alias log:universe-setup='docker service logs --raw --tail 500 -f opal_universe-setup'
alias log:universe-storybook='docker service logs --raw --tail 500 -f opal_universe-storybook'
alias log:queue='docker service logs --raw --tail 500 -f opal_queue'
alias log:psql='docker service logs --raw --tail 500 -f opal_pg-master'
# ​
# # docker service dependencies
alias run:monolith-deps="to:cabochon && yarn docker:rails:exec 'bundle install'"
alias run:universe-deps="to:cabochon && yarn docker:exec opal_universe-shell 'yarn install'"
# ​
# # get process id for given docker service
alias run:get-monolith-pid='get-container-pid "opal_monolith"'
alias run:get-universe-pid='get-container-pid "opal_universe"'
alias run:get-universe-shell-pid='get-container-pid "opal_universe-shell"'
alias run:get-storybook-pid='get-container-pid "opal_storybook"'
# ​
# # start sh session inside docker service
alias start:monolith-sh='docker exec -it opal_monolith.1.$(run:get-monolith-pid) sh'
alias start:universe-sh='docker exec -it opal_universe.1.$(run:get-universe-pid) sh'
alias start:universe-shell-sh='docker exec -it opal_universe-shell.1.$(run:get-universe-shell-pid) sh'
alias start:storybook-sh='docker exec -it opal_storybook.1.$(run:get-storybook-pid) sh'
# ​
# # restart services
alias restart:monolith='docker service update opal_monolith --force'
alias restart:universe='docker service update opal_universe --force'
alias restart:queue='docker service update opal_queue --force'
# ​
# # start/stop local environment
alias start:local='yarn docker:start'
alias stop:local='yarn docker:stop'
# ​
# # scale optional services
alias start:universe-storybook='docker service scale opal_universe-storybook=1'
alias stop:universe-storybook='docker service scale opal_universe-storybook=0'
alias start:lapidary-storybook='docker service scale opal_lapidary-storybook=1'
alias stop:lapidary-storybook='docker service scale opal_lapidary-storybook=0'
# ​
# # rails console and debugging commands
alias start:rails-console='yarn docker:rails:console'
alias start:rails-debug='yarn docker:rails:debug_monolith:start'
alias stop:rails-debug='yarn docker:rails:debug_monolith:stop'
# ​
# # ngrok
alias ngrok='~/ngrok'

