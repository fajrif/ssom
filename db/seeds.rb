# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Admin.delete_all
Admin.create!(:email => "admin@dap.com", :password => "secret", :password_confirmation => "secret")

#Contact.delete_all
#Banner.delete_all

Category.delete_all
Portfolio.delete_all
Picture.delete_all
path = File.expand_path('spec/support/files')
categories = Dir.entries(path + '/portfolios').select {|entry| File.directory? File.join(path + '/portfolios',entry) and !(entry =='.' || entry == '..') }
categories.each do |c|
	cat = Category.create(:name => c.titleize)
	portfolios = Dir.entries(path + "/portfolios/#{c}").select {|entry| File.directory? File.join(path + "/portfolios/#{c}",entry) and !(entry =='.' || entry == '..') }
	portfolios.each do |p|
		portfolio = Portfolio.new(:title => p.gsub('_',' ').titleize)
		portfolio.history = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
		portfolio.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
		portfolio.category = cat
		portfolio.save
		pictures = Dir["#{path}/portfolios/#{c}/#{p}/*"]
		pictures.each do |photo|
			name = File.basename(photo, ".jpg")
			pic = Picture.new(:title => name.gsub('_',' ').titleize)
			pic.image = Rails.root.join(photo).open
			pic.description = "Lorem ipsum dolor sit amet."
			pic.portfolio = portfolio
			pic.save
		end
	end
end

Blog.delete_all
b = Blog.new(:title => "Baduy Tribe, Indonesian Ethnic in Banten - West Java")
b.description = %q{
<p>Baduy Tribe is live deep in the remote highland jungles, of Mount Kendeng, west Java on area of 50sq km in isolation since the mid-1500s. And only 150 Km from capital Jakarta with few signs of modern development. Badui tribe live much as their ancestors did hundreds of years ago. Anthropologists think they may be the descendants of priests from the Java Hindu Kingdom of Pajajaran who fled into west Java junglepeaks when Muslim armies overran the region in l578, and forming their own religious clan based on strict adherence to unique religious beliefs, perhaps influenced in some ways by the Hindu religion of the Kingdom of Pajajaran before it fell to the Muslim invaders.</p>
<p>The Baduy (or Badui), who call themselves Kanekes (Urang Kenekes), are a traditional community living in the western part of the Indonesia province of Banten near Rangkasbitung Their population of 11,700 is centered in the Kendeng mountains at an elevation of 300–500 meters (975′-1,625′) above sea level. Their homeland in Banten, Java is contained in just 50 km2 (19 sq mi) of hilly forest area 120 km (75 mi) from Jakarta, Indonesia’s capital.</p>
<p>Ethnically the Baduys belong to the Sundanese ethnic group. Their racial, physical and linguistic traits bear much resemblance to the rest of the Sundanese people; however, the difference is in their way of life. Baduy people resist foreign influences and vigorously preserve their ancient way of life, while modern Sundanese are more open to foreign influences and a majority are Muslims.</p>
<p>The Baduy are divided into two sub-groups; the Baduy Dalam (Inner Baduy), and the Baduy Luar(Outer Baduy). No foreigners were allowed to meet the Inner Baduy, though the Outer Baduy do foster some limited contacts with the outside world. The origin of the word Baduy may come from the term “Bedouin”, although other sources claim the source is a name of a local river.</p>
}
b.image = Rails.root.join("spec/support/files/blogs/baduy_tribe.jpg").open
b.save

b = Blog.new(:title => "New Zealand Walking & Hiking Tour")
b.description = %q{
<p>After this trip, the bar will be forever raised. Other coasts will seem less striking. Even mountains will pale in comparison. So many spectacular views. And incredible moments. From Kura Tawhiti's limestone monoliths to shimmering Lake Wanaka. After these nine days in New Zealand, your next vacation will have big shoes to fill.</p>
<p><strong>Days 1-2</strong> Tramp through the spectacularly beautiful South Island | Hike to a Maori sacred site, Kura Tawhiti, a gorgeous set of limestone outcroppings | Behold beech forests and alpine lakes as you ascend to a sheep-station hut | Bird-lovers rejoice: look for tiny rifleman and gregarious alpine parrots called kea.</p>
<p><strong>Days 3-5</strong> Soak up superb views during a hike to the summit of Arthur's Pass | Dig into a classic New Zealand barbecue served overlooking the coastline | Tour the historic gold-rush town of Hokitika | Hike Franz Josef Glacier, one of the few glaciers in the world that descends into a temperate rain forest | Swap rain forest for pounding surf at Munro Beach and search for pounamu, the native jade | Explore the Te Wahipounamu World Heritage area—choose hiking, swimming or canoeing with a naturalist on Lake Moeraki.</p>
<p><strong>Days 6-9</strong> Stroll the shore of Lake Wanaka and visit the bustling town of Wanaka | Experience jaw-dropping Milford Sound, New Zealand's most famous fjord, on an optional excursion | Take a swing bridge across the West Matukituki River and climb to a spectacular viewpoint below the Rob Roy hanging glacier | Hike the Central Otago wine region and enjoy a tasting | Discover picturesque Queenstown, surrounded by breathtaking views of the Remarkables mountain range.</p>
}
b.image = Rails.root.join("spec/support/files/blogs/new_zealand.jpg").open
b.save

b = Blog.new(:title => "5 Secrets Every Photographer Should Learn")
b.description = %q{
<p>I am often asked about the so-called “secrets” behind my photography work. Because I believe in sharing knowledge, I am unveiling some of the crucial moments I always consider during my creation process.</p>
<p><strong>Gear, Motivation, and Imagination</strong> By gear, I don’t mean having the best camera and lens in the world. How many amazing photos do we see everyday with older or budget equipments? Knowing your equipment very well beats not having a hundred megapixel sensor. Ask yourself: Where are the dials? How and what do they perform? How can they be tweaked to give me the best performance? Which is the sweet spot of my lens? Knowing these sorts of things create a more comfortable and confident mood whenever I shoot. How many times have you missed a moment because the camera was off, or the lens cap was on, or the ISO was too high, or you didn’t switch over to a particular mode quickly? I’m sure this has all happened to us.</p>
<p><strong>Framing the Scene</strong> A key moment is framing your scene, especially when you’re shooting on location. Many would say this one is pretty obvious, but the way you see and capture the moment that your viewfinder (or the back display) has framed is very important. Seeing through your viewfinder creates another dimension. There are many variables in your camera (like sensor, lens angle, height, and many others) that make your framing different from what you see with your very own eyes. The best way to see and spot a scene is by looking through that square created by your viewfinder. It creates a vision in our mind and leads our own eyes to a particular world.</p>
<p><strong>Keep It Simple</strong> Simplicity is the most important rule that I always try to achieve. It could be a matter of personal taste. I’m not attracted to images charged with so many elements going on. They could distract the viewer, making it difficult to understand the purpose of a photo.</p>
<p>Our brain decides almost instinctively if the image is pleasant or not. When you share or show your photo, you have a small window (let’s say about 10-15 seconds) to grab the viewer’s attention. Creating a simple atmosphere that your viewer could relate to gives you extra time. Afterwards, your viewer may start to connect with your photo. There’s no better reward, at least to me, than when someone says to me, “I can´t stop looking at your picture.”</p>
<p><strong>How Color Looks in Various Devices, and Color Harmony</strong> I learn about color schemes and the accuracy of our screens the hard way. Thanks to the current computer I use for my image editing, I recently realized how inaccurate my previous computer screen was. There are many devices on the market to help you find a better experience. Nothing still beats a powerful monitor that is fully calibrated. And if you print your own photographs, you should take this great step even more.</p>
<p>On the other hand, there’s another secret you should know about. I always view my images in two or three devices, with a different scale. I do this for two reasons. First, to get an idea of what viewers will see on their screens. Second, to see how good a photo looks in a smaller scale. If the photo gets my instant attention on my mobile phone, it means it has potential.</p>
<p><strong>How to Give Meaning to Your Image. Plus, How to Add a Title and Description</strong> This is those of us who like to share photos on the web, and want to have our work seen by a large number of people. Our goal is to create and seek an emotional response from our viewers. Try to show your very best work. I’m not talking strictly about only showing photos with the finest details, sharpness, and flawless technique. If those are the only things that matter, then what’s the use of having the perfect photo when it has no deeper meaning?</p>
}
b.image = Rails.root.join("spec/support/files/blogs/photography.jpg").open
b.save
