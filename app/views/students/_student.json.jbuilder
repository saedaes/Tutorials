json.extract! student, :id, :Register, :Name, :LastName, :SecondLastName, :Cellphone, :IsAssessor, :TeacherAssessor, :created_at, :updated_at
json.url student_url(student, format: :json)
