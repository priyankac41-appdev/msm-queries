class DirectorsController < ActionController::Base
  def index
    render({ :template => "directors_templates/index.html.erb"})
  end
end
