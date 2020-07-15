require 'gpt3'

def generate_more(names_list, title: "")
  puts title
  gpt = GPT3::Completion.create(
    names_list.join("\n"),
    temperature: 0.75,
    stop:        "\n\n",
    verbose:     true
  )
  gpt.fetch('choices', [])
    .map { |choice| choice.fetch('text') }
    .flat_map { |n| n.split("\n") }
    .reject(&:empty?)
end

alien_names = %w(
  Boolou
  A'Hani
  N'Quarra
  Ch'Alic
  Deniea
  Herly P'Bane
  Rathu
  Sh'Drenga
  Spari Tani
  Boppa
)

harry_potter_universe_names = [
  "Harry Potter",
  "Ron Weasley",
  "Hermione Granger",
  "Severus Snape",
  "Lord Voldemort",
  "Draco Malfoy",
  "Albus Dumbledore"
]

female_names = %w(
  Emma Olivia Ava Isabella Sophia Charlotte Jessica Juliah Delilah Madeline
)

male_names = %w(
  Liam Noah Andrew Jason Josh Logan William James Benjamin Mason
)

spaceship_names = [
  "Metha Miner",
  "Fortune's Fool",
  "Capital Enterprise",
  "U. S. S. Tsiolkovsky",
  "Alacrity",
  "Pioneer",
  "Xani Wanderer",
  "Star of Baki",
  "Flame of Annon",
  "Star Lancer",
]

cyberpunk_corporation_names = [
  "Hosu-Hieu Technology Unlimited",
  "ExaTech Amalgamated",
  "Lodieva-Foxwell Evolved Communications",
  "Hara Amalgamated",
  "SRB Unlimited",
  "SHI Media Multinational",
  "Milgen GmbH",
  "Yawan-Corwin Heavy Industrial",
  "Matsaya Amalgamated",
  "Irkalpev Industrial Consolidated",
  "Easy Rider"
]

puts generate_more(harry_potter_universe_names, title: "Harry Potter Names")
puts generate_more(alien_names,                 title: "Alien Names")
puts generate_more(female_names,                title: "Female Names")
puts generate_more(male_names,                  title: "Male Names")
puts generate_more(spaceship_names,             title: "Spaceship Names")
puts generate_more(cyberpunk_corporation_names, title: "Cyberpunk Corporation Names")
