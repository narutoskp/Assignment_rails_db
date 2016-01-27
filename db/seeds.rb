# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


room = Room.create ([{room: '101'},
					 {room: '201'},
					 {room: '301'},
					 {room: '501'},
					 {room: '601'}])

reservation = Reservation.create ([{roomRes: '102'},
					 			   {roomRes: '202'},
					 			   {roomRes: '302'},
					 			   {roomRes: '502'},
					 			   {roomRes: '602'}],
					 			   [{time: '03/08/2016'},
					 			   	{time: '09/08/2016'},
					 			   	{time: '10/04/2016'},
					 			   	{time: '12/12/2016'},
					 			   	{time: '10/10/2016'}])

employee = Employee.create ([{nameEm: 'Nana'},
					 		 {nameEm: 'Emma'},
					 		 {nameEm: 'Sara'},
					 		 {nameEm: 'Wessan'},
					 		 {nameEm: 'Sopon'}])

customer = Customer.create ([{nameCus: 'Sek'},
					 		 {nameCus: 'Men'},
					 		 {nameCus: 'Rose'},
					 	 	 {nameCus: 'Tono'},
					 		 {nameCus: 'Unoto'}])
