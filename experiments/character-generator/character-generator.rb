require 'gpt3'

preprompt = <<END
Name: Alice Quinn
Description: A girl who works at the local pub. She likes art and reading, but hates talking about either.
Appearance: Since school mandates uniforms, she's usually wearing just that.

Name: Quintin Quarrel
Description: A quiet boy who works at as an apprentice at the clobber. He's one year into his training, but learning fast.
Appearance: His style is down-to-earth, with lots of jeans and t-shirts.

Name: Charles Morgen
Description: A slightly greedy man who lives in a large mansion up the mountain.
Appearance: He's typically seen wearing a suit and rarely in anything else.

Name: Ebeneezer Lugg
Description: An ancient widower that runs the Lugg Pub. Lives in the forest behind the Pub with his son Gulliver Lugg.
Appearance: Usually wearing overalls. Very tanned from working outside. Strong and hairy.

Name: Dr. Milton Malicious
Description: A grumpy old wizard who lives at the South Pole. He is overly protective of his sweet potato garden. 
Appearance: Dr. Milton is incredibly tall and lanky, but hides it with long, flowing blue robes.
END

gpt = GPT3::Completion.create(
  preprompt,
  temperature: 0.75,
  stop:        "\n\n",
  verbose:     true
)
puts gpt.fetch('choices', [])
  .map { |choice| choice.fetch('text') }