#!/bin/bash
function docker_alias() {
    docker run -it --rm \
        -v $(pwd):$1 -w $1 \
        ${@:2}
}

# Javascript
alias node="docker_alias /directory node node"
alias npm="docker_alias /directory node npm"

# PHP
alias php="docker_alias /directory php:7.2-alpine php"
alias composer="docker_alias /directory composer"
alias phpcs="docker_alias /directory herloct/phpcs"
