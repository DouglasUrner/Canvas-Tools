require 'rest-client'
require 'json'
require 'yaml'

require_relative '../Common/boilerplate'

# TODO: Create a quiz
# TODO: Add questions
# TODO: Assign to sections
# TODO: EntryTask specific command line args
# TODO: Check result - handle errors

quiz_api = "#{$options[:base_url]}/api/v1/courses/#{$options[:course_id]}/quizzes"

response = RestClient.post(
    quiz_api,
    JSON.load(File.open(ARGV[0])),
    {
        authorization: "Bearer #{$options[:auth_token]}",
        headers: {
            accept: :json,
        }
    }
)

pp JSON.parse(response.to_s)