# Miscellaneous utilities

Here are some utilities that I've written out of need. Several of them depend on each other or other common software; dependencies are noted below. Brief descriptions follow; precise documentation, where it exists, is in the programs themselves.

See the individual programs for their licenses; most of them are GPLed, while a couple of trivial ones are placed in the public domain.

The Lua scripts need the [stdlib Lua libraries](http://luaforge.net/projects/stdlib). In general, a POSIX system is assumed; there are likely to be unwitting dependencies on GNU extensions.


## [repeat](repeat) (Perl)

Repeat a command a certain number of times.


## [retcode](retcode) (sh)

Run a command and print its return code.


## [rerun](rerun) (bash)

Run a command with a modified environment. Works with commands found on the `PATH`, and with session managers (when your session is restarted, the command will be run again with its modified environment). Useful for running programs with `LD_PRELOAD`.


## [retouch](retouch) (Perl)

Perform a command, preserving the timestamp of a file.


## [my](my) (Perl, sh)

*Needs `mlocate` and GNU `grep`*

Find a file in the user’s home directory. GNU grep is used for colour output when standard output is a terminal. Uses a database created by `myupdatedb`.


## [countdir](countdir) (Perl)

Counts the number of non-dot files and directories in a directory.


## [greptype](greptype) (sh)

*Needs `find`*

Grep files of a particular type.


## [dgrep](dgrep) (Perl)

Greps the default system dictionary, or that for the given language.


## [zcat](zcat) (Perl)

*Needs `atool`*

Cat a possibly-compressed file (`zcat` only works on compressed files). Does not currently accept any of `cat`’s command-line options.


## [prepend](prepend) (Perl)

Prepends standard input to the given files.


## [softwrap](softwrap) (Lua) and [hardwrap](hardwrap) (sh)

Soft and hard wrap text. `hardwrap` just uses `fold`.


## [reverse](reverse) (sh)

Reverse a file byte-by-byte, using `tac`.


## [random-line](random-line) (Perl)

Copies a random line from standard input to standard output.


## [sig](sig) (Perl)

A signature-with-random-tagline generator: it appends a random line from `~/.taglines` to `~/.signature`, formats the result nicely and prints it on standard output.


## [pdf2grayscale](pdf2grayscale) (sh)

*Needs [ImageMagick](http://imagemagick.org)*

Convert a PDF file to grayscale, to avoid wasting colour ink or toner when printing.


## [lp2](lp2) (Perl)

Print files two-sided on a one sided printer by printing the even and then the odd pages. It's set up to work sensibly on my printer (straight paper path, pages come out face down). It works with any file type that CUPS can print.


## [thumbify](thumbify) (Perl)

*Needs Image::ExifTool*

Add EXIF thumbnails to images. In practice, this seems to mean JPEGs and PNGs.


## [counter](counter) (Perl)

Maintains a counter in a file: each time `counter` is invoked the counter in the file is incremented and the new value output to standard output.


## [ctime2date](ctime2date) and [date2ctime](date2ctime) (sh)

*`date2ctime` is by Steve Kinzler*

Convert between ctime and date strings.
