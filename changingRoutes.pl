#!/usr/bin/perl

use Mojolicious::Lite;
use strict;
use warnings;

get '/toy/:toy_name' => {template => 'toy'} => 'toy';
get '/meet/:name' => {template => 'staff'} => 'staff';
get '/' => {template => 'home'} => 'home';


app->start;

__DATA__

@@ toy.html.ep
<p>Mira esto increible <%= $toy_name %>.</p>

@@ staff.html.ep
<p>This is <%= ucfirst $name %>.</p>

@@ home.html.ep
<h1>Home</h1>
<p>Bienvenido al polo norte!</p>

<p>
	Say hi to <%= link_to 'Santa' => staff => {name => 'santa'} %>
	and <%= link_to 'Rudolph' => staff => {name => 'rudolph'} %>
</p>

<p>
	And just wait until you see our amazing
	<%= link_to 'new puzzle' => toy => {toy_name => 'puzzle'} %>!
</p>
