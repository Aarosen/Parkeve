user1 = User.create(name: "Aaron Rosen", email: "abc@gmail.com", password: "foobar", password_confirmation: "foobar", admin: true)
user2 = User.create(name: "Abel Hernandez", email: "123@gmail.com", password: "foobar12", password_confirmation: "foobar12")
user3 = User.create(name: "Abigail Fernandez", email: "aaa@gmail.com", password: "foobar123", password_confirmation: "foobar123")
user4 = User.create(name: "Liliana Smith", email: "bbb@gmail.com", password: "foobar1234", password_confirmation: "foobar1234")
user5 = User.create(name: "Teresa Borges", email: "ccc@gmail.com", password: "foobar12345", password_confirmation: "foobar12345")

property1 = Property.create(user_id: user1.id, owner_id: user1.id, address: "Lafontaine, #23", zip_code: "07100", city: "Polanco", state: "Mexico City", country: "Mexico")
property2 = Property.create(user_id: user1.id, owner_id: user1.id, address: "Tonala, #30", zip_code: "06100", city: "Roma Norte", state: "Mexico City", country: "Mexico")
property3 = Property.create(user_id: user1.id, owner_id: user1.id, address: "Sinaloa, #90", zip_code: "06150", city: "Roma Norte", state: "Mexico City", country: "Mexico")
property4 = Property.create(user_id: user2.id, owner_id: user2.id, address: "Republica de Chile, #130", zip_code: "00198", city: "Centro", state: "Mexico City", country: "Mexico")
property5 = Property.create(user_id: user2.id, owner_id: user2.id, address: "Amsterdam, #187", zip_code: "06450", city: "Hipodromo Condesa", state: "Mexico City", country: "Mexico")

infopayment1 = InfoPayment.create(payment_form: "Visa", payment_amount: 60)
infopayment2 = InfoPayment.create(payment_form: "Visa", payment_amount: 1450)
infopayment3 = InfoPayment.create(payment_form: "MasterCard", payment_amount: 1200)
infopayment4 = InfoPayment.create(payment_form: "MasterCard", payment_amount: 75)
infopayment5 = InfoPayment.create(payment_form: "Visa", payment_amount: 3000)

parking1 = Parking.create(user_id: user1.id, property_id: property2.id)
parking2 = Parking.create(user_id: user1.id, property_id: property1.id)
parking3 = Parking.create(user_id: user1.id, property_id: property3.id)
parking4 = Parking.create(user_id: user2.id, property_id: property5.id)
parking5 = Parking.create(user_id: user2.id, property_id: property4.id)

payments1 = Payment.create(parking_id: parking3.id, info_payment_id: infopayment1.id, start: "2017-11-29T12:35:45", ending: "2017-11-30T12:35:47")
payments2 = Payment.create(parking_id: parking2.id, info_payment_id: infopayment3.id, start: "2017-10-02T09:35:56", ending: "2017-11-02T09:35:58")
payments3 = Payment.create(parking_id: parking1.id, info_payment_id: infopayment1.id, start: "2017-11-30T08:25:28", ending: "2017-12-30T09:25:23")
payments4 = Payment.create(parking_id: parking5.id, info_payment_id: infopayment4.id, start: "2017-12-30T08:40:31", ending: "2017-12-30T18:40:15")
payments5 = Payment.create(parking_id: parking4.id, info_payment_id: infopayment5.id, start: "2017-10-31T14:45:58", ending: "2017-12-31T14:45:12")