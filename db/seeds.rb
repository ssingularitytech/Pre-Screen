
admin_user = AdminUser.find_by(email: 'admin@example.com')

if admin_user.nil?
  admin_user = AdminUser.create(
    email: 'admin@example.com', 
    password: 'password', 
    password_confirmation: 'password',
    first_name: 'Admin', 
    last_name: 'User'
  )
end

if admin_user.topics.empty?
  admin_user.topics.create(name: 'React', active: true)
  admin_user.topics.create(name: 'Python', active: true)
  admin_user.topics.create(name: 'JavaScript', active: true)
  admin_user.topics.create(name: 'CSS', active: true)
end
