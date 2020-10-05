require "open3"

# Install any extra gems which are specified
`bundle install --gemfile=/github/workspace/Gemfile`
`gem install octokit`
`gem install yaml`

stdout, stderr, status = Open3.capture3("ruby /app/main.rb")

puts "stdout: #{stdout}"
puts "stderr: #{stderr}"
puts "status: #{status}"