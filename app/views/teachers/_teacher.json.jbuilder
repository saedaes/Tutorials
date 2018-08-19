json.extract! teacher, :id, :TeacherUser, :EmployeeNumber, :Name, :LastName, :SecondLastName, :Cellphone, :Email, :IsAdmin, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
