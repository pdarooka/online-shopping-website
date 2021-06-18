# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(name: 'Hunter x Hunter: Phantom Rouge',
    description: %{Someone has stolen Kurapika’s eyes—and another survivor from his clan whose members were massacred for their Scarlet Eyes! Gon and Killua begin investigating on his behalf, but shortly after they’ve begun, the Phantom Troupe appears!},
    image: 'h4h.png',
    price: 12.99)

Product.create!(name: 'Dragon Ball Z - The Dead Zone',
    description: %{Garlic Jr.'s on the hunt, and Gohan is on the hit list! Kidnapping the kid for his Dragon Ball, it seems the sadistic villain is on a quest to collect all seven. As Goku arrives prepared to save his only son, Garlic Jr. summons the Eternal Dragon Shenron, prepared to wish for immortality. His ultimate goal: To take over the Earth, in order to seek revenge for the death of his father. With heightened powers and blessed with eternal life, not even the combined efforts of Goku and his friends can defeat Garlic Jr. now. And as the fiend creates a Dead Zone, intent on sending the heroes into the void, their rescue may lie in the hands least expected.},
    image: 'dbz.png',
    price: 14.99)

Product.create!(name: 'My Hero Academia: Two Heroes',
    description: %{Deku and his friends take on a daring rescue operation when villains hack into I-Expo—the world’s leading hero item exhibition. All Might is trapped by their sinister plan, and his best hope for saving everyone lies in the new generation of heroes.},
    image: 'mha.png',
    price: 14.99)