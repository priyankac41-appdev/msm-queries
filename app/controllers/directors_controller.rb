class DirectorsController < ActionController::Base
  def index
    @list_of_directors = Director.all
    render({ :template => "directors_templates/index.html.erb"})
  end

  def specific_director
    @list_of_directors = Director.all
    @id = params.fetch(:id_number, {})
    render({ :template => "directors_templates/specific_director.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => "directors_templates/eldest.html.erb"})
  end

  def youngest
    @youngest = Director.where.not({:dob => nil}).order({:dob => :desc}).at(0)
    render({ :template => "directors_templates/youngest.html.erb"})
  end
end
