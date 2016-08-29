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

  def project
    change.project
  end

  def owner
    change.owner
  end

end

