# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

Newevocation.destroy_all

Writing.destroy_all

puts "Seeding writings..."
Writing.create(text: "aberration")
Writing.create(text: "abhor")
Writing.create(text: "ache")
Writing.create(text: "acrid")
Writing.create(text: "adroit")
Writing.create(text: "ancient")
Writing.create(text: "appetite")
Writing.create(text: "arid")
Writing.create(text: "ashen")
Writing.create(text: "audacity")
Writing.create(text: "backbone")
Writing.create(text: "baleful")
Writing.create(text: "bellicose")
Writing.create(text: "bereaved")
Writing.create(text: "bewildered")
Writing.create(text: "bleak")
Writing.create(text: "blinding")
Writing.create(text: "bloodcurdling")
Writing.create(text: "brazen")
Writing.create(text: "breath")
Writing.create(text: "broken")
Writing.create(text: "cashmere")
Writing.create(text: "caustic")
Writing.create(text: "chaotic")
Writing.create(text: "clench")
Writing.create(text: "coarse")
Writing.create(text: "corpulent")
Writing.create(text: "courage")
Writing.create(text: "crave")
Writing.create(text: "crippling")
Writing.create(text: "crisp")
Writing.create(text: "curious")
Writing.create(text: "deafening")
Writing.create(text: "decorous")
Writing.create(text: "defy")
Writing.create(text: "demagogue")
Writing.create(text: "desire")
Writing.create(text: "disastrous")
Writing.create(text: "discordant")
Writing.create(text: "dowdy")
Writing.create(text: "dulcet")
Writing.create(text: "dynamic")
Writing.create(text: "eccentric")
Writing.create(text: "emollient")
Writing.create(text: "enrage")
Writing.create(text: "envy")
Writing.create(text: "ephemeral")
Writing.create(text: "euphoric")
Writing.create(text: "exude")
Writing.create(text: "fallen")
Writing.create(text: "feckless")
Writing.create(text: "feisty")
Writing.create(text: "fickle")
Writing.create(text: "florid")
Writing.create(text: "forbidden")
Writing.create(text: "frenetic")
Writing.create(text: "frown")
Writing.create(text: "gloom")
Writing.create(text: "groan")
Writing.create(text: "haggard")
Writing.create(text: "harpy")
Writing.create(text: "havoc")
Writing.create(text: "hiss")
Writing.create(text: "hunger")
Writing.create(text: "incendiary")
Writing.create(text: "insolent")
Writing.create(text: "intrepid")
Writing.create(text: "irksome")
Writing.create(text: "juicy")
Writing.create(text: "leathery")
Writing.create(text: "lilt")
Writing.create(text: "loathe")
Writing.create(text: "lurch")
Writing.create(text: "lurking")
Writing.create(text: "lush")
Writing.create(text: "mordant")
Writing.create(text: "murmur")
Writing.create(text: "need")
Writing.create(text: "oath")
Writing.create(text: "off-limits")
Writing.create(text: "opulent")
Writing.create(text: "pervasive")
Writing.create(text: "playful")
Writing.create(text: "pliant")
Writing.create(text: "pluck")
Writing.create(text: "plunge")
Writing.create(text: "power")
Writing.create(text: "powerful")
Writing.create(text: "pungent")
Writing.create(text: "rancorous")
Writing.create(text: "raspy")
Writing.create(text: "recalcitrant")
Writing.create(text: "redolent")
Writing.create(text: "rejection")
Writing.create(text: "restrained")
Writing.create(text: "rigid")
Writing.create(text: "ruthless")
Writing.create(text: "scheme")
Writing.create(text: "searing")
Writing.create(text: "secret")
Writing.create(text: "seethe")
Writing.create(text: "shame")
Writing.create(text: "shatter")
Writing.create(text: "sheer")
Writing.create(text: "shrill")
Writing.create(text: "shuffled")
Writing.create(text: "sinew")
Writing.create(text: "sinful")
Writing.create(text: "skittish")
Writing.create(text: "solid")
Writing.create(text: "spunk")
Writing.create(text: "stark")
Writing.create(text: "startle")
Writing.create(text: "stubby")
Writing.create(text: "surreptitious")
Writing.create(text: "thermal")
Writing.create(text: "thick")
Writing.create(text: "thundering")
Writing.create(text: "turbulent")
Writing.create(text: "twisted")
Writing.create(text: "venomous")
Writing.create(text: "visceral")
Writing.create(text: "vitriol")
Writing.create(text: "voracious")
Writing.create(text: "vulnerable")
Writing.create(text: "warped")
Writing.create(text: "watery")
Writing.create(text: "weathered")
Writing.create(text: "whisper")
Writing.create(text: "wiry")
Writing.create(text: "withering")
Writing.create(text: "wraith")

Writing.create(text: "Two roads diverged in a yellow wood,
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

Writing.create(text: "We real cool. We
    Left school. We
    
    Lurk late. We
    Strike straight. We
    
    Sing sin. We
    Thin gin. We
    
    Jazz June. We
    Die soon.")

Writing.create(text: "What happens to a dream deferred?

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

puts "Writings seeded"


# puts "Seeding images..."
# Image.create!(audio: "")
# puts "Images seeded"

# puts "Seeding evocations.."
# Evocation.create!(text: "first evocation", fi)
# Evocation.create!(text: "second evocation")
# puts "Done seeding"
