class CollectionsController < ApplicationController
  
  def index
    @collections = Mongoid.database.collections
    respond_to do |format|
      format.json { render :text => @collections = collections_as_json(@collections) }
    end
  end

  def show
    @collection = Mongoid.database.collections.select{|c| c.name == params[:id]}
    respond_to do |format|
      format.json { render :text => @collection = collection_as_json(@collection) }
    end
  end
  
  private
  
  def collections_as_json(collections)
    { :collections => collections.collect{ |collection| collection_as_json(collection) } }.to_json
  end
  
  def collection_as_json(collection)
    {
      :name => collection.name,
      :size => collection.size
    }
  end

end