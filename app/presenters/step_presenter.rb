class StepPresenter < BasePresenter
  presents :step

  def title
    step.stepNo.to_s.empty? ? 'Create new step' : "Step ##{step.stepNo} of #{step.change.name}"
  end

  def sub_title
    step.action.empty? ? 'Tip: Dont forget to log.' : step.action[0..29]
  end


  def print_links
    if step.links_to_display.nil?
      return ' '
    end

    @links = ''
    step.links_to_display.each do |key|

      tmp = case key
              when :empty
                path = '#'
                h.link_to '<spam> </spam>'.html_safe, path, style: 'color: white';
              when :more_info
                path = '#'
                h.link_to '<i class="glyphicon glyphicon-plus"> </i> More info'.html_safe, path, style: 'color: white';
              when :add_log
                path = '#'
                h.link_to  '<i class="glyphicon glyphicon-edit"> </i> New log'.html_safe, path, id: 'add-log', style: 'color: white';
              when :edit_step
                path = '#'
                h.link_to '<i class="glyphicon glyphicon-edit"> </i> Edit step'.html_safe, path, style: 'color: white';
            end
      @links += tmp + add_separator unless tmp.nil?
    end

    @links.chomp(add_separator).html_safe
  end
end
