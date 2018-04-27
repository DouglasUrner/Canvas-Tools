#!/usr/bin/env ruby

require 'pandarus'

require_relative '../common/util'

options = parse_opts do |options, opts|
  opts.on('-l', '--list',
          'retrieve a list of courses for this user') do
    options[:list] = true
  end
end

canvas = Pandarus::Client.new(
    prefix: "#{options[:base_url]}/api",
    token:  "#{options[:auth_token]}"
)

class Courses
  def initialize(canvas)
    @courses = canvas.list_your_courses
  end

  def list
    @courses.to_a.map { |c| c.name }
  end
end

courses = Courses.new(canvas)

#puts courses.list

@courses.to_a.each { |c| puts c.name, c.id }

if __FILE__ == $PROGRAM_NAME
  # We're running as a tool rather than as a library

end