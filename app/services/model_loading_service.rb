class ModelLoadingService
  def initialize(searchable_model, params = {})
    @searchable_model = searchable_model
    @params = params
    @params ||= {}
  end
end