#!/usr/bin/perl

use Mojolicious::Lite;
use strict;
use warnings;

get '/toy/:toy_name' => {template => 'toy'} => 'toy';
get '/meet/:name' => {template => 'staff'} => 'staff';
get '/' => {template => 'home', format=> 'html'} => 'home';


app->start;

__DATA__

@@ toy.html.ep
<p>Mira esto increible <%= $toy_name %>.</p>

@@ staff.html.ep
<p>This is <%= ucfirst $name %>.</p>

@@ home.html.ep
<html>
<head>
	<title>Perl Home</title>
</head>
		<p>Y este es el parrafo de inicio donde vamos a explicar las cosas increibles que se pueden hacer
		con ramas!</p>
	<p>
		Say hi to <%= link_to 'Santa' => staff => {name => 'santa'} %>
		and <%= link_to 'Rudolph' => staff => {name => 'rudolph'} %>
	</p>

	<p>
		And just wait until you see our amazing
		<%= link_to 'new puzzle' => toy => {toy_name => 'puzzle'} %>!
	</p>
</html>
