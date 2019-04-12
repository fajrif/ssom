module ApplicationHelper
	def title(page_title, small_title = nil)
    content_for(:title) { h(page_title.to_s) }
    content_for(:page_title) do
			content_tag(:h2, :class => "section-title") do
				title = page_title.to_s + " "
				title += content_tag(:small) do
					small_title.to_s
				end if small_title
				title.html_safe
			end
		end
  end

	def flash_message
    messages = ""
    flash.each do |name, msg|
			messages += content_tag :div, :id => "#{name.to_sym == :notice ? "Success" : "Error"}Message" do
				content_tag :div, :class => "alert alert-#{name.to_sym == :notice ? "success" : "danger"}" do
					content_tag(:strong, name.to_sym == :notice ? "Success!" : "Error!") + " " + msg
				end
			end unless msg == true
    end
    messages.html_safe
  end

	def current_path?(path)
		request.path == path ? 'current-menu-item current_page_item' : ''
  end

	def is_homepage?
		request.path == root_path
	end

	def is_aboutpage?
		request.path == about_path
	end

	def is_projectpage?
		request.path.include?("project")
	end

	def truncate_paragraph(desc, length=0)
		if length > 0
			truncate(Nokogiri::HTML.parse(desc).css('p')[0].text, length: length, omission: "...")
		else
			Nokogiri::HTML.parse(desc).css('p')[0].text
		end
  end

end
