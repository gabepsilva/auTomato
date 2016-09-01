class StepPresenter < BasePresenter
  presents :step





  def title
    step.action.to_s.empty? ? 'Create new step' : step.name
  end

  def sub_title
    step.action.to_s.empty? ? 'Tip: Dont forget to log.' : step.description
  end


  def print_links

    @links = ''

    step.links_to_display.each do |key|

      tmp = case key
              when :empty
                path = '#'
                h.link_to '<spam> </spam>'.html_safe, path, style: 'color: white';

            end

      @links += tmp + add_separator unless tmp.nil?
    end
    @links.chomp(add_separator).html_safe

  end



end
