class LandingPresenter < BasePresenter
  presents :landing


  def print_links

    @links = ''

    landing.links_to_display.each do |key|

      tmp = case key
              when :new_project
                path = Rails.application.routes.url_helpers.new_project_path
                h.link_to '<i class="glyphicon glyphicon-plus">  </i> New Project'.html_safe, path, style: 'color: white';
              when :new_change
                path = Rails.application.routes.url_helpers.new_change_path
                h.link_to '<i class="glyphicon glyphicon-refresh">  </i> New Change'.html_safe, path, style: 'color: white';
            end

      @links += tmp + add_separator
    end


    @links.chomp(add_separator).html_safe
  end

end
