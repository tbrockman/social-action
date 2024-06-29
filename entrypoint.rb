require "open3"

# Install any extra gems which are specified

gemfile = "/github/workspace/Gemfile"
File.exists?(gemfile) && `bundle install --gemfile=#{gemfile}`
`gem install public_suffix -v 5.1.1`
`gem install octokit`
`gem install yaml`

stdout, stderr, status = Open3.capture3("ruby /app/main.rb")

puts "stdout: #{stdout}"
puts "stderr: #{stderr}"
puts "status: #{status}"