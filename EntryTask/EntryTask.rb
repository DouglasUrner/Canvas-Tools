require 'rest-client'
require 'json'
require 'pp'

require_relative '../Common/boilerplate'

# Create a quiz or survey
# Add questions
# Publish
# Loop over sections and set as active

quiz_api = "#{$options[:base_url]}/api/v1/courses/#{$options[:course_id]}/quizzes"

response = JSON.parse(RestClient.get(quiz_api, {
    accept: :json,
    authorization: "Bearer #{$options[:auth_token]}",
}).to_s)

pp response