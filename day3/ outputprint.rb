#!/usr/bin/env ruby -w
require '/inputread'
require '/itemclass'
require '/calculate'


class Outputprint < Item
  def output(Object item,line)
  	tax = item.gettaxes
  	splited = line.split

  end
end

