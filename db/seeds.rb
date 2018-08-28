# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Title.create(name: 'Mr.')
Title.create(name: 'Mrs.')
Title.create(name: 'Miss.')
Title.create(name: 'Ms.')
Title.create(name: 'Dr.')

Country.create(name: 'Inida')
Country.create(name: 'USA')
Country.create(name: 'UK')
Country.create(name: 'China')
Country.create(name: 'Japan')

Category.create(name: 'Narcotics')
Category.create(name: 'Depressants')
Category.create(name: 'Stimulants')
Category.create(name: 'Hallucinogens')
Category.create(name: 'Anabolic steroids')

Category.create(name: '5-alpha-reductase inhibitors')
Category.create(name: 'adrenal corticosteroid inhibitors')
Category.create(name: 'adrenal cortical steroids')
Category.create(name: 'adamantane antivirals')
Category.create(name: 'ACE inhibitors with thiazides')
Category.create(name: '5HT3 receptor antagonists')
Category.create(name: '5-aminosalicylates')


ActiveIngredient.create(name: 'Tretinoin')
ActiveIngredient.create(name: 'Isotretinoin')
ActiveIngredient.create(name: 'Adapalene')
ActiveIngredient.create(name: 'Azelaic Acid')
ActiveIngredient.create(name: 'Benzoyl Peroxide')
ActiveIngredient.create(name: 'Cyproterone Acetate - Ethinyl Estradiol')
ActiveIngredient.create(name: 'Tazarotene')
ActiveIngredient.create(name: 'Benzoyl Peroxide')




