#!/usr/bin/perl

use Net::Whois::IP qw(whoisip_query);

my $ip = $ARGV[0];

print $ip . "\n";

my $response = whoisip_query($ip,"true");

foreach ( sort keys %$response ){
	print "$_ -> @{ $response->{$_}}\n";
}


