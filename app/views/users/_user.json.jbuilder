json.extract! user, :id, :UserAccount, :Name, :LastName, :SecondLastName, :Cellphone, :Email, :IdProfile, :created_at, :updated_at
json.url user_url(user, format: :json)
