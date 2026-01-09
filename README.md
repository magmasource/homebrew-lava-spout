# magmasource lava-spout tap for Homebrew

## What is Homebrew and how do I install it?

Homebrew is a package manager for macOS and Linux.

Go to [brew.sh](https://brew.sh/) and follow the Install Homebrew instructions there.

## What do the formulae in lava-spout do?

The formulae are 'cask' formulae, which means Homebrew will fetch and install pre-compiled alphaMELTS binaries (similar to the [magmasource/lava-bucket](https://github.com/magmasource/lava-bucket/) Scoop bucket for Windows). Homebrew will install the Gnu Science Library, if appropriate, make links and set the Path variable so that running the 'install.command' Perl script is not required.

At the moment the only formula is 'alphamelts' for the standalone app. A 'libalphamelts' formula to install the dynamically link library (.dylib or .so) needed by alphaMELTS for MATLAB/Python will be available in the next release.

## How do I install these formulae?

After Homebrew has been installed/updated, run the following:

`brew install magmasource/lava-spout/<formulaname>`

Or `brew tap magmasource/lava-spout` and then `brew install <formulaname>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "magmasource/lava-spout"
brew "<formulaname>"
```

Substitute the formula name (e.g. 'alphamelts') for '&lt;formulaname&gt;'.

## Homebrew documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
