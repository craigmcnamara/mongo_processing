module CollectionsHelper
  def collections_as_json(collections)
    collections.collect do |collection|
      collection_as_json(collection)
    end
  end
  
  def collection_as_json(collection)
    {
      :name => collection.name,
      :size => collection.size
    }
  end
end
