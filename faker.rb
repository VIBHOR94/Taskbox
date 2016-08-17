15.times do
	client=Client.new
	client.name= Faker::Name.first_name
	client.company= Faker::Company.name
	client.mobile=Faker::Number.number(10)
	client.website=Faker::Internet.domain_name
	client.save
end

20.times do
	o=Order.new
	o.order_date=Faker::Date.between(Date.today.beginning_of_year,Date.today - 2.month)
	o.order_number=Order.all.pluck(:id) + 1000
end
	product.in_stock=Faker::Boolean.boolean
	product.available_from=Faker::Date.between(Date.today.beginning_of_year,Date.today + 2.month)
	product.category=Category.all.pluck(:id).sample
	product.save
end

	project.start_date=Faker::Date.between(Date.today.beginning_of_year,Date.today)
	project.end_date=Faker::Date.between(project.start_date , project.start_date+3.months)
	project.client_id=Project.all.pluck(:id).sample
	project.save
end
Order.all.each do |order|
	items=LineItem.where('order_id = ?',order.id)
	order.total=0
	items.each do |item|
		order.total += item.total_price
	end
end
Product.all.each do |product|
	product.name=Faker::Name.name
	product.save
end



index=1
100.times do
	presentdate=Date.today.beginning_of_year + index
	EmployeeOverview.all.each do |employee|
		attendance=AttendanceSheet.new
		attendance.employee_id=employee.id
		attendance.date=presentdate
		attendance.status=Faker::Boolean.boolean
		attendance.reason_for_leave=Faker::Lorem.word
		attendance.save
	end
	index += 1
end

200.times do
	customer=CustomerExtra.new
	customer.customer_detail_id=CustomerDetail.all.pluck(:id).sample
	customer.mobile_number=Faker::Number.number(10)
	customer.email_id=Faker::Internet.email
	customer.address=Faker::Address.street_address
	customer.card_type=Faker::Business.credit_card_type
	customer.card_number=Faker::Business.credit_card_number
	customer.save
end
	
100.times do 
	project=ProjectDetail.new
	project.title=Faker::Lorem.word
	project.start_date=Faker::Date.between(Date.today - 1.year ,Date.today - 3.month)
	project.end_date=Faker::Date.between(Date.today - 2.month , Date.today)
	project.status=["Completed" ,"Incomplete"].sample
	project.number_of_team_members=[1,2,3,4,5].sample
	project.save
end
		
ProjectDetail.all.each do |project|
	project.number_of_team_members.do
		member=ProjectGroup.new
		member.project_detail_id=project.id
		member.employee_overview_id=EmployeeOverview.all.sample.id
		member.responsibility=Faker::Lorem.sentence
	end
end
200.times do
	task=Task.new
	task.project_detail_id=ProjectDetail.all.sample.id
	task.title=Faker::Lorem.word
	task.description=Faker::Lorem.sentence
	task.status=["Completed","Incomplete"].sample
	task.start_date=Faker::Date.between(Date.today.beginning_of_year - 2.year,Date.today.beginning_of_year)
	task.end_date=Faker::Date.between(Date.today.beginning_of_year + 1.month,Date.today - 1.day)
	task.comment=Faker::Lorem.sentence
	task.save
end




t.string   "title"
    t.string   "description"
    t.date     "date"
    t.string   "starting_time"
    t.string   "venue"
    t.integer  "budget"

50.times do
	event=Event.new
	event.title=Faker::Lorem.word
	event.description=Faker::Lorem.sentence
	event.date=Faker::Date.between(Date.today.beginning_of_year,Date.today)
	event.starting_time=Faker::Time.between(2.days.ago, Date.today, :evening)
	event.venue=Faker::Address.street_address
	event.budget=Faker::Number.number(5)
	event.save
end

100.times do
	ad=Advertisement.new
	ad.description=Faker::Lorem.sentence
	ad.advertising_company=Faker::Company.name
	ad.budget=Faker::Number.number(5)
	ad.status=["Produced","In-production"].sample
	ad.contact_detail=Faker::Internet.email
	ad.save
end

100.times do
	complain=Complain.new
	complain.customer_detail_id=CustomerDetail.all.sample.id
	complain.employee_overview_id=EmployeeOverview.all.sample.id
	complain.description=Faker::Lorem.sentence
	complain.status=["Complete","Incomplete"].sample
	complain.completed_at=Faker::Date.between(Date.today.beginning_of_year,Date.today - 2.month)
	complain.save
end


















