#!/usr/bin/env perl
# sig
# Concatenate a random line from ~/.taglines to ~/.signature and send
# it to stdout
# (c) Reuben Thomas <rrt@sc3d.org> 31/3/00-30/9/2001, 10/3/2003, 11/1/2004,
#   20/10/2006, 20-21/1, 6/8, 3/9, 9/11/2009, 8th May 2010
# Released under the GPL version 3, or (at your option) any later version.

use utf8;
use strict;
use warnings;

use Perl6::Slurp;
use Encode;
use Text::Wrap;

my $MaxCols = 76;
my $Signature = "$ENV{HOME}/.signature";
my $Taglines = "$ENV{HOME}/.taglines";

$Text::Wrap::columns = $MaxCols;

my $tag = `random-line < $Taglines`;
$tag = decode_utf8($tag);
chomp $tag;

my $sig = slurp $Signature or die "cannot open `$Signature'\n";
chomp $sig;

my $out = $sig . " | " . $tag;
$out = $sig . "\n" . wrap("", "", $tag) if length $out > $MaxCols;

# Get current song, if any, from mpd
if (system("mpc status | head -2 | tail -1 | grep -q '^\\[playing\\]'") == 0) {
  # FIXME: Deal better with empty tags
  my $info = `mpc -f "Listening to: ‘\%title%’ from ‘\%album%’ (\%artist%)" status | head -n1`;
  $out .= "\n" . $info . wrap("", "", "");
}

binmode(STDOUT, ":utf8");
print $out;
