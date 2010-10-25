class Main
  get "/projects/new" do
    @project = Project.new
    haml :"projects/new"
  end
  
  get "/projects/:id" do
    @project = Project[params[:id]]
    @url = @project.link
    haml :"projects/id"
  end
  
  post "/projects" do
    @project = Project.new(params[:project])
    
    if @project.valid?
      @project.create
      session[:notice] = "Your project has been added"
      redirect "/projects"
    else
      session[:error] = "Project did not validate"
      haml :"projects/new"
    end
  end

  get "/projects" do
    @projects = Project.all
    haml :"projects/list"
  end
  
  get "/projects/delete/:id" do
    @project = Project[params[:id]]
    @project.delete
    redirect "/projects"
  end
  

  get "/projects/publish/:id" do
    @project = Project[params[:id]]
    @project.published = 1
    @project.save
    redirect "/projects"
  end
end