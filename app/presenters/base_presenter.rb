class BasePresenter

  attr_accessor :title
  attr_accessor :sub_title

  def initialize(object, template)
    @object = object
    @template = template
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

  private

  def add_separator

    if @links.nil?
      ''.html_safe
    else
      ' &ensp; | &ensp; '.html_safe
    end

  end

end

