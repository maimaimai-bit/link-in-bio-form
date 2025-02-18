class ApplicationController < ActionController::Base
  def index
    @items = Item.all
    render({ :template => "index.html.erb" })
  end

  def backdoor
    render({ :template => "backdoor.html.erb" })
  end

  def create
    @item = Item.new
    @item.link_url = params.fetch("query_link_url")
    @item.link_description = params.fetch("query_link_description")
    @item.thumbnail_url = params.fetch("query_thumbnail_url")
    
    if @item.save
      redirect_to("/")
    else
      redirect_to("/backdoor")
    end
  end
end
