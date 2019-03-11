# => this is for Admin user
Fabricator(:admin) do
  email { FFaker::Internet.email }
  password 'secret'
end

Fabricator(:banner) do
  title {
    sequence(:title) { |i|
			"Banner-#{i}"
    }
  }
  caption {
    sequence(:caption) { |i|
			"Caption-#{i}"
    }
  }
	image {
    Rack::Test::UploadedFile.new(
			"./spec/support/files/banner.jpg",
      "image/jpg"
    )
  }
end

Fabricator(:portfolio) do
  title {
    sequence(:title) { |i|
			"Portfolio-#{i}"
    }
  }
  history { FFaker::Lorem.paragraph(1) }
  description { FFaker::Lorem.paragraph(1) }
end

Fabricator(:picture) do
  title {
    sequence(:title) { |i|
			"Picture-#{i}"
    }
  }
  description { FFaker::Lorem.paragraph(1) }
	image {
    Rack::Test::UploadedFile.new(
			"./spec/support/files/image.jpg",
      "image/jpg"
    )
  }
	portfolio
end

Fabricator(:category) do
  name {
    sequence(:name) { |i|
			"Category-#{i}"
    }
  }
end

Fabricator(:blog) do
  title {
    sequence(:title) { |i|
			"Blog-#{i}"
    }
  }
  description { FFaker::Lorem.paragraph(1) }
	image {
    Rack::Test::UploadedFile.new(
			"./spec/support/files/image.jpg",
      "image/jpg"
    )
  }
	category
end

Fabricator(:contact) do
	name { FFaker::Name.name }
  email { FFaker::Internet.email }
  subject "Test"
  message "Testing"
end
