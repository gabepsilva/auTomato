class ProjectPresenter < BasePresenter
  presents :project





  def title
    project.name.to_s.empty? ? 'Create new project' : project.name
  end

  def sub_title
    project.name.to_s.empty? ? 'Projects are groups for changes.' : project.description
  end


  def print_links

    @links = ''

    project.links_to_display.each do |key|

      tmp = case key
              when :empty
                path = '#'
                h.link_to '<spam> </spam>'.html_safe, path, style: 'color: white';

            end

      @links += tmp + add_separator unless tmp.nil?
    end
    @links.chomp(add_separator).html_safe

  end


  def print_breadcrumb

    if project.name.to_s.empty?

      self.breadcrumb_links << "<li class='active'> <p><span class='glyphicon glyphicon-th-large'></span>Create new project</p></li>".html_safe

    else

      self.breadcrumb_links << "<li class='active'> <p><span class='glyphicon glyphicon-th-large'></span>#{project.name.truncate(@truncate_NO)}</p></li>".html_safe

    end

    super

  end



end
