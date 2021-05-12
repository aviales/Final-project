# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Project.destroy_all
ContractorType.destroy_all
Contractor.destroy_all
Inspeccion.destroy_all
CheckList.destroy_all
CheckListItem.destroy_all
WorkArea.destroy_all
TodoItem.destroy_all
TodoList.destroy_all

images = ["https://live.staticflickr.com/65535/50992057781_d928278848_b.jpg", "https://live.staticflickr.com/65535/51045129662_5a421bc8b4_z.jpg", "https://live.staticflickr.com/65535/51045035601_5115ce562a.jpg", "https://live.staticflickr.com/65535/51046666471_50d0d48802.jpg", "https://live.staticflickr.com/65535/51046751917_9b3facd347.jpg", "https://live.staticflickr.com/65535/51046666446_a280f4c657.jpg", "https://live.staticflickr.com/65535/51046666426_0522582cf4.jpg", "https://live.staticflickr.com/65535/51046666411_27a1023cec_m.jpg", "https://live.staticflickr.com/65535/51046751862_2ef5df21bb_m.jpg", "https://live.staticflickr.com/65535/51045936993_262b34ecfc_m.jpg", "https://live.staticflickr.com/65535/51045936988_84d62a7c2a_m.jpg", "https://live.staticflickr.com/65535/51045936973_cc3e911519_m.jpg", "https://live.staticflickr.com/65535/51045936958_e965d5ceec_m.jpg", "https://live.staticflickr.com/65535/51046666346_375cd1a4aa_m.jpg", "https://live.staticflickr.com/65535/51046666331_5316df1f4d_m.jpg"]

       
   

user1 = User.new(
                id: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
                email: Faker::Internet.email,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                password: 123123                 
        )
              user1.profile_picture.attach(io: File.open(Rails.root.join('db/imgs/1.jpg')), filename:'user.jpg')
             user1.save
user2 = User.new(
                email: Faker::Internet.email,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                password: 123123                 
        )
              user2.profile_picture.attach(io: File.open(Rails.root.join('db/imgs/1.jpg')), filename:'user.jpg')
             user2.save

             user3 = User.new(
                email: Faker::Internet.email,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                password: 123123                 
        )
              user3.profile_picture.attach(io: File.open(Rails.root.join('db/imgs/1.jpg')), filename:'user.jpg')
             user3.save

             user4 = User.new(
                email: Faker::Internet.email,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                password: 123123                 
        )
              user4.profile_picture.attach(io: File.open(Rails.root.join('db/imgs/1.jpg')), filename:'user.jpg')
             user4.save

             user5 = User.new(
                email: Faker::Internet.email,
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                password: 123123                 
        )
              user5.profile_picture.attach(io: File.open(Rails.root.join('db/imgs/1.jpg')), filename:'user.jpg')
             user5.save

# 15.times do |i|
#         puts i
#         User.create!(
#                 id: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
#                 email: Faker::Internet.email,
#                 first_name: Faker::Name.first_name,
#                 last_name: Faker::Name.last_name,
#                 profile_picture: Faker::Avatar.image, 
#                 password: 123123                
#         )      
        
# end

10.times do |i|
        puts i 
        Project.create!(
                name: Faker::Company.name,
                start_date: Faker::Date.between(from: '2021-04-23', to: '2021-05-25'),
                finish_date: Faker::Date.between(from: '2021-06-01', to: '2021-09-25'),
                periodicity:  ['Once a week inspeccion','Biweekly inspeccion'].sample,
                user_id: User.all.sample.id,
                
        )
end

10.times do
        contractor_type = ContractorType.create(
                name: Faker::Company.name, 
                )
            puts "Se ha creado un tipo de contratista"                
    end

10.times do
    contractor = Contractor.create(
            name: Faker::Company.name, 
            user_id: User.all.sample.id,
            )
        puts "Se ha creado un contratista"                
end
10.times do
        inspeccion = Inspeccion.create(
                date:  Faker::Date.between(from: '2021-04-23', to: '2021-05-25'),
                    project_id: Project.all.sample.id,
                    contractor_id: Contractor.all.sample.id,
                    user_id: User.all.sample.id
        )
            puts "Se ha creado una inspeccion"                
end

10.times do
        check_list = CheckList.create(
                document_version: [1, 2 , 3, 4, 5].sample,
                hazard_type: ['Escavaciones','Derrumbes','Incendios','Tecnologicos'].sample,
                contractor_id: Contractor.all.sample.id,
                inspeccion_id: Inspeccion.all.sample.id
        )
            puts "Se ha creado un checklist"                
end


5.times do
        check_list_item = CheckListItem.create(
                value: [0,1].sample,
                text: Faker::Lorem.paragraph,
                check_list_id: CheckList.all.sample.id               
        )
            puts "Se ha creado una Check list Item"                
end

10.times do
        work_area = WorkArea.create(
                name: Faker::Address.city,
                check_list_id: CheckList.all.sample.id               
        )
            puts "Se ha creado un Work Area"                
end

5.times do
        todo_list = TodoList.create(
                title: ['Revisar los activos','Chequear Seguridad de personal','Analizar fugas','Analizar vencimiento de activos'].sample,
                description: Faker::Lorem.paragraph,
                check_list_id: CheckList.all.sample.id 
        )
            puts "Se ha creado una Todo List"                
end

5.times do
        todo_item = TodoItem.create(
                content: Faker::Lorem.paragraph(sentence_count: 2),
                completed_at: Faker::Date.between(from: '2021-06-01', to: '2021-09-25'),
                todo_list_id: TodoList.all.sample.id               
        )
            puts "Se ha creado una Todo item"                
end




AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

