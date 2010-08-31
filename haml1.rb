#       untitled.rb
#       
#       Copyright 2010 anmol <anmol@anmol-laptop>
#       
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#       
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#       
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.


#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'haml'
 
get '/' do
  haml :index
end
 

# This method uses member variables.
get '/hello/:name' do|name|
  @name = name
  haml :hello
end
 
# This method injects
# local variables
get '/goodbye/:name' do|name|
  haml :goodbye, :locals => { :name => name }
end
 
__END__
@@ layout
%html
  %head
    %title Haml Rockzzzzzzzzzz
  %body
    =yield
 
@@ index
#header
  %h1 Haml Rockzzzzzzzzzzz
#content
  %p
    using haml has never been so easy......rubyyyyyyyy
    bitstat........anmol........tarun........rashmi
 
@@ hello
%h1= "Hello #{@name}!"
 
@@ goodbye
%h1= "Goodbye #{name}!"
