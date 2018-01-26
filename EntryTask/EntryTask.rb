require 'rest-client'
require 'json'
require 'yaml'

require_relative '../Common/boilerplate'

# TODO: Do POST and GET
# TODO: Create a quiz
# TODO: Add questions
# TODO: Store and retrieve bell schedule
# TODO: Store and retrieve when sections meet
# TODO: Assign to sections and set window
# TODO: EntryTask specific command line args
# TODO: Check result - handle errors
# TODO: Verbose option - clean up and generalize

options = parse_opts do |opts|
  opts.on("-l", "--list",
          "retrieve a list of entry tasks for the course") do
    options[:list] = true
  end
end

# Verbosity
pp options

quiz_api = "#{options[:base_url]}/api/v1/courses/#{options[:course_id]}/quizzes"

# Create the quiz

response = RestClient::Request.new({
    method: options[:method],
    url: quiz_api,
    # TODO: Payload should be conditional on POST
    payload: JSON.load(File.open(ARGV[0])),
    headers: {
        accept: :json,
        authorization: "Bearer #{options[:auth_token]}",
    }
}).execute do |response, request, result|
  # Verbosity
  pp request
  case response.code
  when 200
    [ :success, JSON.parse(response.to_str) ]
  else
    fail "#{response.to_str}"
  end
end

# When creating there should only be one quiz returned, but when listing
# there will usually be many.

quizzes = response[1]

# Add questions

quizzes.each do |quiz|
  print "#{quiz['id']} : #{quiz['title']}\n"
end

# Check if course has sections and assign entry tasks