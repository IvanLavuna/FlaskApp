curl --header "Content-Type: application/json" \
     --request GET \
     --data '{"username":"LaVuna123",
     "firstname":"Ivan",
     "lastname":"Manchur",
     "email":"Flower2@gmail.com123",
     "password":"lavuna20023",
     "phone_number":"0689123542",
     "photo":"my_photo.png"}' \
     'http://localhost:4200/user/login' \
     > ../../data/json/user.json

#curl --header "Content-Type: application/json" \
#     --request POST \
#     --data '{"username":"Lavuna123","password":"lavuna2002"}' \
#      'http://localhost:5000/users' \
#      > ../data/test.jso