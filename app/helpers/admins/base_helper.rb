module Admins::BaseHelper
  def blank_or_not(object,blank='-')
    if object.blank?
      blank
    else
      if block_given?
        yield
      else
        object
      end
    end
  end

  def null_or_not(object,zero=0)
    if object.nil?
      zero
    else
      if block_given?
        yield
      else
        object
      end
    end
  end

	def sortable(column, title = nil)
    title ||= column
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    link_tag = link_to title.titleize, params.merge(:sort => column, :direction => direction, :page => nil)
    icon_tag = column == params[:sort] ? "&nbsp;<i class='#{direction == "asc" ? "icon-arrow-up" : "icon-arrow-down"}'></i>" : ""
    link_tag + icon_tag.html_safe
  end

	def empty_data_message(model, new_link)
		raw("Currently there are no data #{model.model_name.human.pluralize.downcase} at the moment. Please create one by clicking #{link_to "here", new_link}.")
	end
end
