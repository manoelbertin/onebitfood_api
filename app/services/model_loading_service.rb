class ModelLoadingService

  def initialize(searchable_model, params = {})
    @searchable_model = searchable_model
    @params = params
    @params ||= {}
  end

  def call
    @searchable_model.search_by_name(@params.dig(:search, :name))
  end
  
end