# -*- coding: utf-8 -*-

require 'json'

PATH = "https://raw.github.com/kazuhisa/misawa/master"

open("list.json","w") do |f|
  f.write Dir::entries("images").reject{|v| v =~ /^\.+$/}.map{|v| File.join(PATH,v)}.to_json
end
