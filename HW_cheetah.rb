# Homework Problem:
# Write some code that will iterate over the
# auditions and add them to the panel if and only if
# they are in the CHEETAH_GIRLS constant.



CHEETAH_GIRLS = [
  "Raven-Symone",
  "Adrienne Bailon",
  "Sabrina Bryan",
  "Kiely Williams"
]

auditions = [
  "Raven-Symone",
  "Usher",
  "Wiz Khalifa",
  "Adrienne Bailon",
  "Hulk Hogan",
  "Sabrina Bryan",
  "Diego Lugo",
  "Kiely Williams",
  "Justin Timberlake"
]

panel = []

auditions.each do
  |value| # puts value
    CHEETAH_GIRLS.each do
      |cheetah_value|
        if cheetah_value == value
           puts "match!"
           panel << value
        end
    end
end

p panel
