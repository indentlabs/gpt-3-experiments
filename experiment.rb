#!/usr/bin/ruby
require 'gpt3'

# Decide on an experiment to run
experiment_name = ARGV.shift
raise "Usage: #{$0} name-of-experiment" unless experiment_name
puts "# Running experiment `#{experiment_name}`"

# Fetch prompt for the active experiment
prompt   = File.read("experiments/#{experiment_name}/prompt.txt")

# Set default settings for all experiments
settings = {
  stop:              "\n\n",
  verbose:           true,
  n:                 10,
  engine:           'davinci',
  result_delimiter: "\n"
}

# Fetch and parse any settings overrides for this experiment
if File.exists?("experiments/#{experiment_name}/settings.json")
  settings.merge!(
    JSON.parse(
      File.read("experiments/#{experiment_name}/settings.json"), 
      { symbolize_names: true }
    )
  )
end

# Generate completions at each of the desired temperatures
[0.0, 0.25, 0.5, 0.75, 1.0].each do |temperature|
  # Since we're storing all of our experiment settings in a single hash AND passing that hash to
  # the GPT3::Completion API wrapper, we want to first filter down that settings hash to just the
  # settings that GPT::Completion.create accepts. We could always just hard-code the keys, use
  # separate settings objects, or explicitly pass key/values in from the hash itself, but a little
  # metaprogramming here is a fun yak-shave that also has the benefit of letting us add/remove
  # experiment settings willy-nilly without worrying about whether the API is expecting them or not.
  completion_method = GPT3::Completion.method(:create)
  completion_keys   = completion_method.parameters
    .select { |p_type, name| [:keyreq, :key].include?(p_type) } # Select all named parameters
    .map    { |p_type, name| name }                             # Grab the parameter name
  completion_settings = settings.slice(*completion_keys)
  completion_settings.merge!({ temperature: temperature })

  # Now that we have a settings object pared down for the API, we complete our prompt.
  completions = GPT3::Completion.create(prompt, completion_settings)
    .fetch('choices', [])
    .map { |choice| choice.fetch('text') }

  # Report to the console
  puts "Completion result:"
  puts completions.join(settings.fetch(:result_delimiter, "\n"))

  # Write the completions for this temperature to an output file
  filename = "experiments/#{experiment_name}/output-#{temperature.to_s.gsub('.', '_')}.txt"
  File.write(filename, completions.join(settings.fetch(:result_delimiter, "\n")))

  # Sleep for a short period of time to keep stress off OpenAI servers
  puts "Briefly sleeping -- hold tight!"
  sleep 30
end
