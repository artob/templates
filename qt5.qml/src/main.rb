#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# See: https://github.com/seanchas116/ruby-qml#readme

require 'qml'

QML.run do |app|
  app.load_path Pathname(__FILE__) + '../main.qml'
end
