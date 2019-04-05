# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

path = File.expand_path('spec/support/files')

Admin.delete_all
Admin.create!(:email => "admin@ssomstudio.com", :password => "secret", :password_confirmation => "secret")

Banner.delete_all
b = Banner.new(:title => "Banner - 1")
b.image = Rails.root.join("#{path}/banners/banner1.jpg").open
b.save

b = Banner.new(:title => "Banner - 2")
b.image = Rails.root.join("#{path}/banners/banner2.jpg").open
b.save

b = Banner.new(:title => "Banner - 3")
b.image = Rails.root.join("#{path}/banners/banner3.jpg").open
b.save

b = Banner.new(:title => "Banner - 4")
b.image = Rails.root.join("#{path}/banners/banner4.jpg").open
b.save

Contact.delete_all

Category.delete_all
Portfolio.delete_all
Picture.delete_all
categories = Dir.entries(path + '/portfolios').select {|entry| File.directory? File.join(path + '/portfolios',entry) and !(entry =='.' || entry == '..') }
categories.each do |c|
	category = Category.create(:name => c.titleize)
	portfolios = Dir.entries(path + "/portfolios/#{c}").select {|entry| File.directory? File.join(path + "/portfolios/#{c}",entry) and !(entry =='.' || entry == '..') }
	portfolios.each do |p|
		title = p.gsub('_',' ').titleize
		portfolio = Portfolio.find_or_create_by(:title => title)
		if portfolio.new_record?
			portfolio.description = %q{
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
			}
			portfolio.save
		end
		pictures = Dir["#{path}/portfolios/#{c}/#{p}/*"]
		pictures.each do |photo|
			pic = Picture.new
			pic.image = Rails.root.join(photo).open
			pic.portfolio = portfolio
			pic.category = category
			pic.save
		end
	end
end

# Dharmawangsa X Co-Working space
p = Portfolio.find_by_title("Dharmawangsa")
p.description = "Dharmawangsa X Office design located in Dharmawangsa, Jakarta. Semi basement, half raised 1st floor lobby with split level for the pop-up function area, 2nd & 3rd as Office Space, Rooftop level as Bar & Private Office for the owner. Natural lighting throughout every rooms."
p.save

# Brunhouse
p = Portfolio.find_by_title("Brunhouse")
p.type_project = "Private Residential"
p.size = "600"
p.location = "Bogor, West Java"
p.save

p = Portfolio.find_by_title("District 5")
p.type_project = "Mixed-used tower"
p.location = "West Jakarta"
p.description = "SSOM entry proposal for a high-rise residential and creative hub in Jakarta."
p.save

p = Portfolio.find_by_title("District 5 1")
p.type_project = "Residential tower"
p.location = "West Jakarta"
p.description = "SSOM entry proposal for a high-rise residential and creative hub in Jakarta."
p.save

p = Portfolio.find_by_title("D5 Office")
p.type_project = "Residential and business hub"
p.location = "West Jakarta"
p.description = "An apartment complex with mall podium design proposal from SSOM. Designs are made for District 5 Group."
p.save

p = Portfolio.find_by_title("Sandei Showroom Bali")
p.type_project = "Showroom"
p.location = "Bali"
p.description = "Day and Night <br/>Sandeiblinds recently renovated showroom. Designed to embrace flexibility of open space - a quintessential element of balinese architecture."
p.save

p = Portfolio.find_by_title("Sandei Marketing Office")
p.type_project = "Office"
p.size = "216"
p.location = "Bekasi"
p.description = "Marketing department's extension office. Built on the rooftop of the office's existing building."
p.save

p = Portfolio.find_by_title("Sby Wedding Hall")
p.type_project = "Multi funciton hall"
p.size = "3000"
p.location = "Surabaya, East Java"
p.description = "Old market place building turned into a mix-use function hall"
p.save

p = Portfolio.find_by_title("Fitstop")
p.type_project = "Commercial Gym"
p.size = "500"
p.location = "Jakarta"
p.description = "Shophouse turned into a multi purpose fitness centre. 1st floor designed with semi daycare playground space & the top levels are connected through voids & foot bridge, so every activities are connected through lights & sounds. Perfect for fit moms."
p.save

p = Portfolio.find_by_title("Jangkar House")
p.type_project = "Private Residential"
p.size = "150"
p.location = "Surabaya, East Java"
p.description = "Brun House. Location : Bogor, Indonesia."
p.save

p = Portfolio.find_by_title("Garage One")
p.type_project = "Car gallery and private residence"
p.size = "150"
p.location = "Cibubur"
p.save

p = Portfolio.find_by_title("Pakubuwono Apartment")
p.type_project = "Residential Interior"
p.size = "177"
p.location = "Jakarta"
p.description = "Our recently finished work for apartment interior design at Pakubuwono, Jakarta. SSOM was involved in the interior design of the apartment."
p.save

p = Portfolio.find_by_title("Compartment Menteng")
p.type_project = "Affordable apartment"
p.size = "1100"
p.location = "Jakarta"
p.save

p = Portfolio.find_by_title("Segafredo")
p.type_project = "Coffee Shop"
p.location = "Jakarta"
p.description = "Our attempt on adjusting the design direction for Segafredo Indonesia. This is a sample for one of its outlet in Jakarta, Indonesia."
p.save

#p = Portfolio.find_by_title("Box House")
#p.type_project = "Single family residential"
#p.size = "300"
#p.location = "Surabaya"
#p.description = "Three bedroom house design located in Surabaya, Indonesia. SSOM used elements of box and squares, we explored on maximizing the capabilites of squares."
#p.save

#p = Portfolio.find_by_title("Park Co-House")
#p.type_project = "Co - housing & co - working space"
#p.size = "800"
#p.location = "Jakarta"
#p.save
