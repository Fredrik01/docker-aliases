#!/bin/bash
function docker_alias() {
    docker run -it --rm \
        -v $(pwd):$1 -w $1 \
        ${@:2}
}

# Javascript
alias node="docker_alias /directory node node"
alias npm="docker_alias /directory node npm"
alias yarn="docker_alias /directory node yarn"

# PHP
alias php="docker_alias /directory php:7.2-alpine php"
alias phpunit="docker_alias /directory phpunit/phpunit"
alias composer="docker_alias /directory composer"
alias phpcs="docker_alias /directory herloct/phpcs"
