require 'rest-client'
require 'json'
require 'pp'

auth_token = File.read('../token')

response = JSON.parse(RestClient.get('https://canvas.instructure.com/api/v1/courses/1203529/quizzes', {
    accept: :json,
    authorization: "Bearer #{auth_token}",
}).to_s)

pp response