#!/usr/bin/perl

use Mojolicious::Lite;

get '/hello' => {text => 'I love Mojolicious!'};

app->start;
