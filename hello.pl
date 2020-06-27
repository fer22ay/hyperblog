#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Mojolicious::Lite;

	get '/' => sub {
		my $c = shift;
		$c->render(text => 'Hola mundo en Perl Mojolicious');
	};

app->start;
