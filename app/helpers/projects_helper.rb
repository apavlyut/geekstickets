module ProjectsHelper
  def show_author_of(project)
    "&nbsp;| автор &mdash; #{project.user.name}".html_safe if project.user
  end
end
