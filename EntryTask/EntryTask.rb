require 'rest-client'
require 'json'
require 'pp'

# Create a quiz or survey
# Add questions
# Publish
# Loop over sections and set as active

auth_token = File.read('../token')
lms = "https://canvas.instructure.com"

response = JSON.parse(RestClient.get("#{lms}/api/v1/courses/1203529/quizzes", {
    accept: :json,
    authorization: "Bearer #{auth_token}",
}).to_s)

pp response