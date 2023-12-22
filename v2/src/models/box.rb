class Box
  attr_accessor :is_open, :content

  def initialize(params = {})
    @is_open = params.fetch(:is_open, false)
    @content = params[:content]
  end

  def put_stuff(stuff)
    @content = stuff
  end

  def open()
    @is_open = true
  end
end