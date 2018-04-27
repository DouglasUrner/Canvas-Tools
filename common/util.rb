require 'optparse'

# parse_opts() - process command line options
#
# @param(block) - options specific to the calling tool.
# @return() - an array of options
#
def parse_opts(&block)
  options = {}

  # Defaults
  options[:base_url] = 'https://canvas.instructure.com'
  options[:method] = :get

  OptionParser.new do |opts|
    opts.banner = "Usage: #{File.basename($PROGRAM_NAME)} [options]"

    opts.on('-A', '--auth-token FILE',
            'FILE holding authentication token') do |token_file|
      options[:auth_token] = File.read(token_file).chop
    end

    opts.on('-c', '--course-id NUMBER',
            'the NUMBER that identifies the course') do |course_id|
      options[:course_id] = course_id
    end

    opts.on('-m', '--method METHOD', 'make a METHOD request') do |method|
      # TODO: handle PUT and DELETE
      if method == 'get'
        options[:method] = :get
      elsif method == 'post'
        options[:method] = :post
      else
        # TODO: handle unsupported methods
        # Print message and abort
      end
    end

    opts.on('-u', '--url URL',
            'the base URL of the Canvas instance') do |base_url|
      if base_url !~ %r{^https://}
        base_url = 'https://' + base_url
      end
      options[:base_url] = base_url
    end

    opts.on('-v', '--[no-]verbose', 'Be chatty...') do |v|
      options[:verbose] = v
    end

    block.call(options, opts)
  end.parse!

  options
end

# find_course() - given a string find a course or courses that match it
#
# @param str [String]
# @return [Object] - array of the triple id, name, short_name
#
def find_course(str)
  client = Pandarus::Client.new(
      prefix: "#{options[:base_url]}/api",
      token:  "#{options[:auth_token]}"
  )

  result = client.send('list_my_courses')

  result.to_a.map { |c| c.name }
end