---
title: 'ruhoh-doctor'
date: '2013-08-27'
description:
tags: [feedback]
---

# This website was made with ruhoh

and I think it is great

but the learning curve could be in my opinion improved a lot by a tool that would detect common mistakes in the spirit of what [brew doctor](https://github.com/mxcl/homebrew/blob/master/Library/Homebrew/cmd/doctor.rb?source=c) does for [Homebrew, the great mac os x command-line installer](http://brew.sh/)

Here are things I would hope to see

## Check if everything is installed

what I did

  368  cd Forge/github
  372  mv bertrou.eu old_bertrou.eu
  373  git clone git://github.com/ruhoh/blog.git bertrou.eu
  374  cd bertrou.eu/
  375  bundle -v 						# note here
  376  gem install bundler 		# doesn't work
  468  which ruby
  469  ruby --version				# ruby is outdated :(

what would have helped me

  $ bundle exec ruhoh doctor
  # Checking if everything is installed
  # :( your ruby version is outdated
  # it seems that you are running MacOS 10.6
  # we recommand you to install homebrew http://brew.sh
  # then simply do 
  brew doctor
  brew install ruby

then if I do this and run it a second time

  $ bundle exec ruhoh doctor
  # Checking if everything is installed
  # :) ruby version is fine
  # :( Bundle is not installed. You can do this
  gem install bundler
  # the gem is not in your current environnment
  gem install ruhoh
  # rackup is not running, do this in a separate shell
  rackup -p 9292
  
## making it your own

I did some mistakes here but it was mostly straigtghforward

   477  git remote rm origin
   # create an empty repository on github
  478  git remote add origin git@github.com:internaciulo/bertrou.eu.git
  481  export EDITOR=vim
  491  git pull origin master
  492  ls
  493  echo test > README.md 
  494  git add .
  495  git commit -m "Second version created with http://ruhoh.com/"
  496  git push origin 

## using the command line

I did often this mistake :

  499  ruhoh compiled/
  500  ruhoh compile
  
Here we see the need for a [bash_completion thing](http://bash-completion.alioth.debian.org) helper :-) 

## ruhoh compiles but does nothing

I then had did a lot of trial and errors to try to compile my markdown files

  500  ruhoh compile
  501  ruhoh compile
  502  ruhoh compile
  503  ruhoh compile
  505  git commit -m "ruhoh compile but does nothing"

What would have helped me

  $ ruhoh doctor
  # Checking repositories
  # :( ruhoh does not know anything about the following repositories
  # - bouquins
 # - design-et-feedback
 # - diversite-linguistique-et-esperantisme
 # - drafts
 # - mac
 # - merci
 # - partials
 # - permis-de-surfer
 # - pourquoi-ce-site
 # - stylesheets
 # - traduction
 # You probably forgot to update your config.yml file
 # See the documentation here http://ruhoh.com/docs/2/configuration/
 
##  media