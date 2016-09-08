class BasePresenter

  attr_accessor :title
  attr_accessor :sub_title
  attr_accessor :breadcrumb_links

  def initialize(object, template)
    @object = object
    @template = template
    @truncate_NO = 23

    self.breadcrumb_links = [home_link]

  end

  def self.presents(name)
    define_method(name) do
      @object
    end

  end

  def h
    @template
  end

  def print_links

  end

  def errors
    @object.errors
  end

  def print_breadcrumb

    self.breadcrumb_links.join(' > ').html_safe

  end

  private

  def add_separator

    if @links.nil?
      ''.html_safe
    else
      ' &ensp; | &ensp; '.html_safe
    end

  end

  def home_link

    path = Rails.application.routes.url_helpers.root_path
    "<li>#{h.link_to '<p><span class="glyphicon glyphicon-home"></span>HOME</p>'.html_safe, path}</li>"

  end

end

