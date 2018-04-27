#!/usr/bin/env ruby

require 'pandarus'
require 'irb'

require_relative '../common/util'

options = parse_opts do |options, opts|
  # Options specific to this tool go here, common options and their defaults
  # come from common/util.rb.

  opts.on('-a', '--api API', 'the API URL to run') do |api|
    options[:api] = api
  end

  opts.on('-l', '--list',
          'retrieve a list of entry tasks for the course') do
    options[:list] = true
  end
end

token_file = options[:token_file]

client = Pandarus::Client.new(
  prefix: "#{options[:base_url]}/api",
  token:  "#{options[:auth_token]}")

class Pandarus::Course
  def assignments(client)
    client.list_assignments(id)
  end
end

courses = client.list_your_courses

binding.irb