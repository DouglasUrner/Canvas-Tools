require 'optparse'

def parse_opts(&block)
  options = {}

  # Defaults
  options[:base_url] = "https://canvas.instructure.com"
  options[:method] = :get

  OptionParser.new do |opts|

    opts.banner = "Usage: #{File.basename($0)} [options]"

    opts.on("-A", "--auth-token FILE",
            "FILE holding authentication token") do |token_file|
      options[:auth_token] = File.read(token_file).chop
    end

    opts.on("-c", "--course-id NUMBER",
            "the NUMBER that identifies the course") do |course_id|
      options[:course_id] = course_id
    end

    opts.on("-m", "--method METHOD", "make a METHOD request") do |method|
      if method == "get"
        options[:method] =:get
      elsif method == "post"
        options[:method] = :post
      else
        # TODO: handle unsupported methods
        # Print message and abort
      end
    end

    opts.on("-u", "--url URL",
            "the base URL of the Canvas instance") do |base_url|
      if base_url !~ /^https:\/\//
        base_url = "https://" + base_url
      end
      options[:base_url] = base_url
    end

    opts.on("-v", "--[no-]verbose", "Be chatty...") do |v|
      options[:verbose] = v
    end

    block.call(options, opts)

  end.parse!

  options
end