# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jguthert <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/02/17 16:26:14 by jguthert          #+#    #+#              #
#    Updated: 2016/02/23 22:17:28 by jguthert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

alias ll='ls -l'
alias la='ls -la'
alias e='emacs'
alias rt='rm *~'

alias spotify=`spotify`
alias skype=`skype`
alias flux=`flux`

function skype() {
    usrname=`whoami`
    mkdir /goinfre/$usrname/caches
    mkdir /goinfre/$usrname/caches/Skype
    rm -rf ~/Library/Application\ Support/Skype
    ln -s /goinfre/$usrname/caches/Skype ~/Library/Application\ Support/Skype
}

function spotify() {
    usrname=`whoami`
    mkdir /goinfre/$usrname/caches
    mkdir /goinfre/$usrname/caches/Spotify
    rm -rf ~/Library/Application\ Support/Spotify
    ln -s /goinfre/$usrname/caches/Spotify ~/Library/Application\ Support/Spotify
}

function flux() {
    usrname=`whoami`
    mkdir /goinfre/$usrname/caches
    mkdir /goinfre/$usrname/caches/F.Lux
    rm -rf ~/Library/Application\ Support/F.Lux
    ln -s /goinfre/$usrname/caches/F.Lux ~/Library/Application\ Support/F.Lux
}