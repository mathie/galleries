# Galleries

This is a simple wee side project, where I'm trying out a few new (to me, at least)
technologies, just as a playground for experimenting. In particular, I'm interested
to see how [paperclip][] and [paper_trail][] can be made to interact to have
versioned uploads of images. Along the way, I'm going to play with [AngularJS][] to
gain some more familiarilty, and I'm going to be experimenting with testing
strategies for front end JS code.

Badges:
[![Build Status](https://travis-ci.org/mathie/galleries.svg?branch=master)](https://travis-ci.org/mathie/galleries)
[![Code Climate](https://codeclimate.com/github/mathie/galleries/badges/gpa.svg)](https://codeclimate.com/github/mathie/galleries)
[![Dependency Status](https://gemnasium.com/mathie/galleries.svg)](https://gemnasium.com/mathie/galleries)

You can find a currently deployed version of the app up on Heroku at:
<https://guarded-chamber-7923.herokuapp.com/>.

## Installation notes

The app is being developed against Ruby 2.2.0 (noted in the `Gemfile` and
`.ruby-version`) and Rails 4.2. Ruby dependencies are managed through bundler, as
usual, so run:

    bundle install

to get them installed. It requires PostgreSQL (I'm developing against v9.4, but I'm
not using any particularly fancy features, so it should certainly work with any
PostgreSQL 9.x). Once you've cloned the repository, you should be able to create the
databases and load them with sample data by running:

    rake db:create:all
    rake db:reset

You need to install the associated bower dependencies, which will then be served
through the asset pipeline. Install them with:

    rake bower:install

This relies on bower being installed globally with npm, which you can do with `npm
install -g bower`. If the bower dependencies change (you'll notice when `Bowerfile`
in the root is modified), you'll need to rerun the bower installation to get an up
to date set of dependencies.

You can then run the application server through [foreman][]:

    foreman start

which should start the app up on <http://localhost:5000/>.

## Testing

The test suite requires [phantomjs][] to be installed for running RSpec feature
tests that rely on JavaScript. If you're on Mac OS X and using Homebrew, then `brew
install phantomjs` should do the trick. You can then run the entire test suite with:

    rake

You can also use [guard][] to keep an eye on file changes and automatically run the
associated specs, with:

    bundle exec guard start

## Deployment

I'm currently deploying the application to Heroku. In order to do that, I've added
the appropriate remote:


    git remote add heroku https://git.heroku.com/guarded-chamber-7923.git

I can then push updates out with:

    git push heroku master

A similar strategy should probably work for you.

[paperclip]: https://github.com/thoughtbot/paperclip
[paper_trail]: https://github.com/airblade/paper_trail
[AngularJS]: https://angularjs.org
[foreman]: http://ddollar.github.io/foreman/
[phantomjs]: http://phantomjs.org
[guard]: http://guardgem.org
