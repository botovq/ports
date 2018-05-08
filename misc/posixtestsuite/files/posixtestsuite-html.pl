#!/usr/bin/perl
#	$OpenBSD: posixtestsuite-html.pl,v 1.1 2018/05/08 22:14:19 bluhm Exp $
# convert results of open POSIX test suite to a html table

# Copyright (c) 2016-2018 Alexander Bluhm <bluhm@genua.de>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use strict;
use warnings;
use Cwd;
use File::Basename;
use Getopt::Std;
use POSIX;

my $now = strftime("%FT%TZ", gmtime);

my %opts;
getopt('o:', \%opts);
my @os;
@os = split(/\s,/, $opts{o}) if $opts{o};

my %source;
my %out;
foreach my $os (@os, "") {
    my $dir = "";
    $dir = "out/$os/" if $os;
    open(my $bl, '<', "${dir}build.log")
	or die "Open '${dir}build.log' for reading failed: $!";
    open(my $rl, '<', "${dir}run.log")
	or die "Open '${dir}run.log' for reading failed: $!";

    my %test;
    while (<$bl>) {
	my ($name, $action, $result) = split(/[ :\n]+/);
	$action =~ /^(build|link)$/ or next;
	$test{$name}{$action} = "$action $result";
	unless ($source{$name}) {
	    my $source = "$name.c";
	    -f $source or die "Source file '$source' missing";
	    $source{$name} = $source;
	}
	my $build = "${dir}$name.build";
	-f "$build" or die "Build log '$build' missing";
	$test{$name}{log} = $build;
    }
    while (<$rl>) {
	my ($name, $action, $result) = split(/[ :\n]+/);
	$action =~ /^execution$/ or next;
	$test{$name}{$action} = $result;
	unless ($source{$name}) {
	    my $source = "$name.sh";
	    -f $source or die "Source file '$source' missing";
	    $source{$name} = $source;
	}
	my $run = "${dir}$name.run";
	-f $run or die "Run log '$run' missing";
	$test{$name}{log} = $run;
    }

    $out{$os} = \%test if $os || !%out;
}

print <<"HEADER";
<!DOCTYPE html>
<html>

<head>
  <title>OpenBSD Open POSIX Test Suite Results</title>
  <style>
    th { text-align: left; white-space: nowrap; }
    tr:hover {background-color: #e0e0e0}
    td.PASS {background-color: #80ff80;}
    td.FAILED {background-color: #ff8080;}
    td.SKIP, td.BUILDONLY {background-color: #80c0ff;}
    td.UNRESOLVED, td.UNSUPPORTED, td.UNTESTED {background-color: #ffc080;}
    td.HUNG, td.INTERRUPTED {background-color: #ffff80;}
    td.UNKNOWN {background-color: #ffffff;}
    td.result, td.result a {color: black;}
  </style>
</head>

<body>
<h1>open POSIX test suite results</h1>
<table>
  <tr>
    <th>created at</th>
    <td>$now</td>
  </tr>
  <tr>
    <th>test</th>
    <td><a href=\"build.log\">build</a></td>
  </tr>
  <tr>
    <th>test</th>
    <td><a href=\"run.log\">run</a></td>
  </tr>
</table>
HEADER

print "<table>\n";
foreach my $name (sort keys %source) {
    my $source = $source{$name};
    print "  <tr>\n    <th><a href=\"$source\">$name</a></th>\n";
    foreach my $os (sort keys %out) {
	my $status = $out{$os}{$name}{execution};
	if (!$status) {
	    $status = $out{$os}{$name}{link};
	    $status = 'BUILDONLY' if $status && $status eq 'PASS';
	}
	$status ||= $out{$os}{$name}{build};
	$status ||= "";
	my $log = $out{$os}{$name}{log};
	my $class = " class=\"result $status\"";
	my $href = $log ? "<a href=\"$log\">" : "";
	my $enda = $href ? "</a>" : "";
	print "    <td$class>$href$status$enda</td>\n";
    }
    print "  </tr>\n";
}
print "</table>\n";

print <<"FOOTER";
</body>

</html>
FOOTER
