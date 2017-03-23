#!/usr/bin/env perl6

sub tree(IO::Path $path, Int $level=0) {
    say ' ' x $level*2, ($level ?? $path.basename !! $path.path) ~ ('/' if $path.d);
    dir($path).sort>>.&tree($level+1) if $path.d;
}

my $root_path = IO::Path.new(@*ARGS[0] || ".");
die "No such directory: $root_path" unless $root_path.d;
tree($root_path);

