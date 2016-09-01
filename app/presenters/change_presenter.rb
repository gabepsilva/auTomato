class ChangePresenter < BasePresenter
  presents :change


  delegate :name, :to => :change


  def print_implementation_date

    if change.implementation_date.nil?
      'Earliest Convenience'
    else
      change.implementation_date.strftime("%A, %B %d, %Y %H:%M %p")
    end

  end

  def title
    change.name.to_s.empty? ? 'Create new change' : change.name
  end

  def sub_title
    change.name.to_s.empty? ? 'Hint: Changes can also be cloned.' : change.description
  end

  def project
    change.project
  end

  def owner
    change.owner
  end

  def print_links

    @links = ''

    change.links_to_display.each do |key|

      tmp = case key
              when :more_info
                path = '#'
                h.link_to '<i class="glyphicon glyphicon-plus">  </i> More info'.html_safe, path, style: 'color: white';
              when :edit_change
                path = Rails.application.routes.url_helpers.edit_change_path(change)
                h.link_to '<i class="glyphicon glyphicon-edit">  </i> Edit change'.html_safe, path, style: 'color: white';
              when :clone_change_to
                path = '#'
                h.link_to '<i class="glyphicon glyphicon-th-large">  </i> Clone to'.html_safe, path, style: 'color: white';
              when :clone_change_from
                path = '#'
                h.link_to '<i class="glyphicon glyphicon-th-large">  </i> Clone from'.html_safe, path, style: 'color: white';
              when :update_change_status
                path = '#'
                h.link_to '<i class="glyphicon glyphicon-folder-close">  </i> Change status'.html_safe, path, style: 'color: white';
              when :add_step_modal
                path = Rails.application.routes.url_helpers.new_step_path(change.id)
                h.link_to '<i class="glyphicon glyphicon-folder-close">  </i> Add Step'.html_safe, path, remote: true, style: 'color: white';
            end

      @links += tmp + add_separator unless tmp.nil?
    end


    @links.chomp(add_separator).html_safe

  end

end

