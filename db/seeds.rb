# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting users..."
User.destroy_all
puts "Users deleted"

puts "Deleting evocations..."
Evocation.destroy_all
puts "Evocations deleted"

puts "Seeding phrases..."
Phrase.create(text: "aberration")
Phrase.create(text: "abhor")
Phrase.create(text: "ache")
Phrase.create(text: "acrid")
Phrase.create(text: "adroit")
Phrase.create(text: "ancient")
Phrase.create(text: "appetite")
Phrase.create(text: "arid")
Phrase.create(text: "ashen")
Phrase.create(text: "audacity")
Phrase.create(text: "backbone")
Phrase.create(text: "baleful")
Phrase.create(text: "bellicose")
Phrase.create(text: "bereaved")
Phrase.create(text: "bewildered")
Phrase.create(text: "bleak")
Phrase.create(text: "blinding")
Phrase.create(text: "bloodcurdling")
Phrase.create(text: "brazen")
Phrase.create(text: "breath")
Phrase.create(text: "broken")
Phrase.create(text: "cashmere")
Phrase.create(text: "caustic")
Phrase.create(text: "chaotic")
Phrase.create(text: "clench")
Phrase.create(text: "coarse")
Phrase.create(text: "corpulent")
Phrase.create(text: "courage")
Phrase.create(text: "crave")
Phrase.create(text: "crippling")
Phrase.create(text: "crisp")
Phrase.create(text: "curious")
Phrase.create(text: "deafening")
Phrase.create(text: "decorous")
Phrase.create(text: "defy")
Phrase.create(text: "demagogue")
Phrase.create(text: "desire")
Phrase.create(text: "disastrous")
Phrase.create(text: "discordant")
Phrase.create(text: "dowdy")
Phrase.create(text: "dulcet")
Phrase.create(text: "dynamic")
Phrase.create(text: "eccentric")
Phrase.create(text: "emollient")
Phrase.create(text: "enrage")
Phrase.create(text: "envy")
Phrase.create(text: "ephemeral")
Phrase.create(text: "euphoric")
Phrase.create(text: "exude")
Phrase.create(text: "fallen")
Phrase.create(text: "feckless")
Phrase.create(text: "feisty")
Phrase.create(text: "fickle")
Phrase.create(text: "florid")
Phrase.create(text: "forbidden")
Phrase.create(text: "frenetic")
Phrase.create(text: "frown")
Phrase.create(text: "gloom")
Phrase.create(text: "groan")
Phrase.create(text: "haggard")
Phrase.create(text: "harpy")
Phrase.create(text: "havoc")
Phrase.create(text: "hiss")
Phrase.create(text: "hunger")
Phrase.create(text: "incendiary")
Phrase.create(text: "insolent")
Phrase.create(text: "intrepid")
Phrase.create(text: "irksome")
Phrase.create(text: "juicy")
Phrase.create(text: "leathery")
Phrase.create(text: "lilt")
Phrase.create(text: "loathe")
Phrase.create(text: "lurch")
Phrase.create(text: "lurking")
Phrase.create(text: "lush")
Phrase.create(text: "mordant")
Phrase.create(text: "murmur")
Phrase.create(text: "need")
Phrase.create(text: "oath")
Phrase.create(text: "off-limits")
Phrase.create(text: "opulent")
Phrase.create(text: "pervasive")
Phrase.create(text: "playful")
Phrase.create(text: "pliant")
Phrase.create(text: "pluck")
Phrase.create(text: "plunge")
Phrase.create(text: "power")
Phrase.create(text: "powerful")
Phrase.create(text: "pungent")
Phrase.create(text: "rancorous")
Phrase.create(text: "raspy")
Phrase.create(text: "recalcitrant")
Phrase.create(text: "redolent")
Phrase.create(text: "rejection")
Phrase.create(text: "restrained")
Phrase.create(text: "rigid")
Phrase.create(text: "ruthless")
Phrase.create(text: "scheme")
Phrase.create(text: "searing")
Phrase.create(text: "secret")
Phrase.create(text: "seethe")
Phrase.create(text: "shame")
Phrase.create(text: "shatter")
Phrase.create(text: "sheer")
Phrase.create(text: "shrill")
Phrase.create(text: "shuffled")
Phrase.create(text: "sinew")
Phrase.create(text: "sinful")
Phrase.create(text: "skittish")
Phrase.create(text: "solid")
Phrase.create(text: "spunk")
Phrase.create(text: "stark")
Phrase.create(text: "startle")
Phrase.create(text: "stubby")
Phrase.create(text: "surreptitious")
Phrase.create(text: "thermal")
Phrase.create(text: "thick")
Phrase.create(text: "thundering")
Phrase.create(text: "turbulent")
Phrase.create(text: "twisted")
Phrase.create(text: "venomous")
Phrase.create(text: "visceral")
Phrase.create(text: "vitriol")
Phrase.create(text: "voracious")
Phrase.create(text: "vulnerable")
Phrase.create(text: "warped")
Phrase.create(text: "watery")
Phrase.create(text: "weathered")
Phrase.create(text: "whisper")
Phrase.create(text: "wiry")
Phrase.create(text: "withering")
Phrase.create(text: "wraith")

puts "Phrases seeded"

puts "Seeding poems..."
Poem.create(text: "Two roads diverged in a yellow wood,
    And sorry I could not travel both
    And be one traveler, long I stood
    And looked down one as far as I could
    To where it bent in the undergrowth;
    
    Then took the other, as just as fair,
    And having perhaps the better claim,
    Because it was grassy and wanted wear;
    Though as for that the passing there
    Had worn them really about the same,
    
    And both that morning equally lay
    In leaves no step had trodden black.
    Oh, I kept the first for another day!
    Yet knowing how way leads on to way,
    I doubted if I should ever come back.
    
    I shall be telling this with a sigh
    Somewhere ages and ages hence:
    Two roads diverged in a wood, and I—
    I took the one less traveled by,
    And that has made all the difference.")

Poem.create(text: "We real cool. We
    Left school. We
    
    Lurk late. We
    Strike straight. We
    
    Sing sin. We
    Thin gin. We
    
    Jazz June. We
    Die soon.")

Poem.create(text: "What happens to a dream deferred?

    Does it dry up
    like a raisin in the sun?
    Or fester like a sore—
    And then run?
    Does it stink like rotten meat?
    Or crust and sugar over—
    like a syrupy sweet?

    Maybe it just sags
    like a heavy load.

    Or does it explode?")

puts "Poems seeded"

puts "Seeding evocations.."
# Evocation.create!(text: "first evocation", fi)
# Evocation.create!(text: "second evocation")
puts "Done seeding"
