User.create!(
        email:"test@test.com",
        password:"Admin@123",
        password_confirmation:"Admin@123",
        name:"Admin User",
        roles:"site_admin"
)
puts "1 Admin user created"
User.create!(
    email:"test2@test.com",
    password:"Admin@123",
    password_confirmation:"Admin@123",
    name:"Regular User",
)
puts "1 Regular user created"
3.times do |topic|
  Topic.create!(
           title:"Topic #{topic+1}"
  )
end
10.times do |blog|
  Blog.create!(
      title: "My Blog post #{blog + 1}",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
 beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
 Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed
 quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid
 ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea
voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem
eum fugiat quo voluptas nulla pariatur?",
          topic_id: Topic.last.id
  )
end
puts "10 blog posts were created!"
5.times do |skill|
  Skill.create!(
      title: "Rails  #{skill + 1}",
      percent_utilized: 15
  )
end
puts "5 skills created!"
8.times do |portfolio_item|
  Portfolio.create!(
      title:"pottfolio title: #{portfolio_item}",
      subtitle:"Ruby On Rails",
      body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.
 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
when an unknown printer took a galley of type and scrambled it to make a type
 specimen book. It has survived not only five centuries, but also the leap into
 electronic typesetting, remaining essentially unchanged. It was popularised in
the 1960s with the release of Letraset sheets containing Lorem
Ipsum passages, and more recently with desktop publishing software like Aldus
 PageMaker including versions of Lorem Ipsum.",
      main_image:"https://via.placeholder.com/600x400/",
      thumb_image:"https://via.placeholder.com/350x200/",
      )
end
puts "8 Ruby On Rails portfolio items were created!"

1.times do |portfolio_item|
  Portfolio.create!(
      title:"pottfolio title: #{portfolio_item}",
      subtitle:"Angular",
      body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.
 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
when an unknown printer took a galley of type and scrambled it to make a type
 specimen book. It has survived not only five centuries, but also the leap into
 electronic typesetting, remaining essentially unchanged. It was popularised in
the 1960s with the release of Letraset sheets containing Lorem
Ipsum passages, and more recently with desktop publishing software like Aldus
 PageMaker including versions of Lorem Ipsum.",
      main_image:"https://via.placeholder.com/600x400/",
      thumb_image:"https://via.placeholder.com/350x200/",
      )
end
puts "1 Angular portfolio items were created!"

3.times do |technology|
  Technology.create!(
      name:"technology #{technology +1}",
           portfolio_id: Portfolio.last.id
  )
end
puts "3 Technologies were created!"