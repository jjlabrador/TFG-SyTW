require 'tfg'

map('/question/') { run Question }
map('/') { run StaticPages }
