# caarlos0 also does dotfiles

## dotfiles

Every developer has his own scripts and aliases to speed-up development and common tasks.
These are mine, based on the great [holman/dotfiles](http://github.com/holman/dotfiles) project.

## what differ this from the 'original'?

Simple: holman uses Mac OS, I use Linux. See what just happened here? I don't have a mac-command-key,
neither other executables exclusive for that OS, so, I tweaked it to work in a simple linux box.
I also removed a lot of thing I dont use, tunned other, well, I messed up everything.


## install

Run this:

```sh
git clone https://github.com/caarlos0/dotfiles-linux.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`, though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

**You'll also want to change `git/gitconfig.symlink`, which will set you up as
committing as Carlos Alexandro Becker. You probably don't want that.**

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you. Fork it, remove what you
don't use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
- **topic/\*.completion.sh**: Any files ending in `completion.sh` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.

## add-ons

There are a few things I use to make my life awesome. They're not a required
dependency, but if you install them they'll make your life a bit more like a
bubble bath.

- If you want some more colors for things like `ls`, install grc: `brew install
  grc`.
- If you install the excellent [rbenv](https://github.com/sstephenson/rbenv) to
  manage multiple rubies, your current branch will show up in the prompt. Bonus.

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/holman/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [Zach Holman](http://github.com/holman)' excellent
[dotfiles](http://github.com/holman/dotfiles) for a couple hours before the
weight of my changes and tweaks inspired me to finally roll my own. But Holman's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project, then from Holman's project, then from 
oh-my-zsh project, then something else I do by myself.

enjoy.

