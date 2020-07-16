#!/usr/bin/ruby
require 'gpt3'

# Decide on an experiment to run
experiment_name = ARGV.shift
raise "Usage: #{$0} name-of-experiment" unless experiment_name
puts "Running experiment `#{experiment_name}`"

# Fetch prompt for the active experiment
prompt = File.read("experiments/#{experiment_name}/prompt.txt")

# Generate completions at each of the desired temperatures
[0.0, 0.25, 0.5, 0.75, 1.0].each do |temperature|
  completions = GPT3::Completion.create(prompt,
    temperature: temperature,
    stop:        "\n\n",
    verbose:     true,
    n:           10
  ).fetch('choices', []).map { |choice| choice.fetch('text') }

  # Write the completions for this temperature to an output file
  filename = "experiments/#{experiment_name}/output-#{temperature.to_s.gsub('.', '_')}.txt"
  File.write(filename, completions.join("\n"))

  # Sleep for a short period of time to keep stress off OpenAI servers
  puts "Briefly sleeping -- hold tight!"
  sleep 5
end
