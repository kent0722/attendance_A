User.create!(name: "管理者",
             email: "sample@email.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

User.create!(name: "上長A",
             email: "sample-A@email.com",
             password: "password",
             password_confirmation: "password",
             role: "superior")
             
             User.create!(name: "上長B",
             email: "sample-B@email.com",
             password: "password",
             password_confirmation: "password",
             role: "superior")

User.create!(name: "一般",
             email: "sample-1@email.com",
             password: "password",
             password_confirmation: "password")
