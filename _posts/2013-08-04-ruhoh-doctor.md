---
layout: post
title: ruhoh doctor - detect common mistakes
categories: design-feedback
tags: ruhoh
---

# This website was made with ruhoh

and I think it is great

but the learning curve could be in my opinion improved a lot by a tool that would detect common mistakes in the spirit of what [brew doctor](https://github.com/mxcl/homebrew/blob/master/Library/Homebrew/cmd/doctor.rb?source=c) does for [Homebrew, the great mac os x command-line installer](http://brew.sh/)

Here are things I would hope to see

## Check if everything is installed

what I did

{% highlight bash %}
  cd Forge/github  
  mv bertrou.eu old_bertrou.eu  
  git clone git://github.com/ruhoh/blog.git bertrou.eu  
  cd bertrou.eu/  
  bundle -v 						# note here  
  gem install bundler 		# doesn't work  
  which ruby  
  ruby --version				# ruby is outdated :(  
{% endhighlight %}

what would have helped me

{% highlight bash %}
  $ bundle exec ruhoh doctor  
  # Checking if everything is installed  
  # :( your ruby version is outdated  
  # it seems that you are running MacOS 10.6  
  # we recommand you to install homebrew http://brew.sh  
  # then simply do   
  brew doctor  
  brew install ruby  
{% endhighlight %}

then if I do this and run it a second time

{% highlight bash %}
  $ bundle exec ruhoh doctor  
  # Checking if everything is installed  
  # :) ruby version is fine  
  # :( Bundle is not installed. You can do this  
  gem install bundler  
  # the gem is not in your current environnment  
  gem install ruhoh  
  # rackup is not running, do this in a separate shell  
  rackup -p 9292  
{% endhighlight %}
  
## making it your own

I did some mistakes here but it was mostly straigtghforward

{% highlight bash %}
  git remote rm origin  
  # create an empty repository on github  
  git remote add origin git@github.com:internaciulo/bertrou.eu.git  
  export EDITOR=vim  
  git pull origin master  
  ls  
  echo test > README.md   
  git add .  
  git commit -m "Second version created with http://ruhoh.com/"  
  git push origin   
{% endhighlight %}

## using the command line

I did often this mistake :

{% highlight bash %}
  ruhoh compiled/  
  ruhoh compile  
{% endhighlight %}
  
Here we see the need for a [bash_completion thing](http://bash-completion.alioth.debian.org) helper :-) 

## ruhoh compiles but does nothing

I then had did a lot of trial and errors to try to compile my markdown files

{% highlight bash %}
  ruhoh compile  
  ruhoh compile  
  ruhoh compile  
  ruhoh compile  
  git commit -m "ruhoh compile but does nothing"  
{% endhighlight %}

What would have helped me

{% highlight bash %}
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
{% endhighlight %}
  
