class GistDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def created_at
    "created at #{object.created_at.strftime("%a %m/%d/%y")}"
  end

  def author
    object.user ? "from: #{object.user.first_name} #{object.user.last_name}" : 'from: Anonymous'
  end
end
