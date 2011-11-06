class DocumentsController < InheritedResources::Base


  def index
    @documents = collection

    respond_to do |format|
      format.json {render :text => {:documents => @documents}.to_json}
    end
  end

  def show

  end

  private
  def collection
    @collection = Connection.db.collection(params[:id]).find({}, {})
  end
  
  def documents_as_json(documents)
    { :documents => documents.collect{ |document| document_as_json(document) } }.to_json
  end
  
  def document_as_json(document)
    {
      :name => collection.name,
      :size => collection.size
    }
  end
end
