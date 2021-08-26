puts "🌱 Seeding spices..."

MedicalUseStrain.destroy_all
Strain.destroy_all
MedicalUse.destroy_all

#Medical Uses Data
analegesic = MedicalUse.create(name: "analgesic")
nausea = MedicalUse.create(name: "nausea")
muscle_spasm = MedicalUse.create(name: "muscle spasm")
appetite_loss = MedicalUse.create(name: "appetite loss")


#Strains Database
20.times do
    Strain.create(strain: Faker::Cannabis.strain, buzzword: Faker::Cannabis.buzzword, cannabinoid: Faker::Cannabis.cannabinoid, health_benefit: Faker::Cannabis.health_benefit, image_url: ["https://media2.fdncms.com/northcoast/imager/og-kush/u/original/2176991/og-kush_credit-nickel-bag-of-funk_o.jpg",
    "https://media2.fdncms.com/portmerc/imager/u/large/19820795/origin_7-points-oregon-staff.jpg",
    "https://dfcby4322olzt.cloudfront.net/wp-content/uploads/2019/04/marijuana-2174302_1920.jpg",
    "https://buycannabisonlineus.com/wp-content/uploads/2020/01/purple-kush-1.jpg",
    "https://www.reeferposts.com/wp-content/uploads/2018/11/pineapple-express.jpg",
    "https://images1.westword.com/imager/u/original/8814854/pineapple.jpg"].sample )
end


# Seed for join MedicalUseStrain

20.times do
    MedicalUseStrain.create(medical_use_id: MedicalUse.ids.sample, strain_id: Strain.ids.sample)
end

puts "✅ Done seeding!"
