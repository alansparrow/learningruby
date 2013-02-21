#!/usr/bin/env ruby
Thread.list.each { |thread| thread.join unless thread == Thread.main }