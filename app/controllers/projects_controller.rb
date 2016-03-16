class ProjectsController < ApplicationController
  before_action :check_access, only: [:create, :show]

  def index
    @projects = policy_scope(Project.all)
  end

  def show
    @project = Project.find(params[:id])
    @tickets = @project.tickets
    authorize @project
  end

  def create
    @project = current_user.projects.new(params.require(:project).permit(:title, :description))
    authorize @project
    if @project.save
      SLACK_NOTIFIER.ping("You have a new project <a href='#{request.protocol}#{request.host_with_port}#{project_path(@project)}'>Check it here</a>")
    end
    redirect_to projects_path
  end
end
