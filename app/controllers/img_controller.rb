class ImgController < ApplicationController
  def index
    @images = Image.order("RANDOM()") # .limit(4)
  end

  def show
    params.require('id')
    
    id = params['id']
    image = Image.find(id)
    image.view_count += 1
    image.save
    
    @viewCount = image.view_count
    @image = image
  end

  def new
  end
  
  def update
    params.require('image')
    
    image = params['image']
    name = image['name']
    url = image['url']
    
    if name.blank? || url.blank?
      redirect_to :action => 'new'
      return
    end
    image = Image.create(:name => name, :url => url)
    
    redirect_to :action => 'show', :id => image.id
  end
  
  def destroy
    params.require('id')
    id = params['id']
    
    image = Image.find(params[:id])
    if image.nil?
      redirect_to :action => 'index'
      return
    end
    
    image.destroy
    
    redirect_to :action => 'index'
  end
end
