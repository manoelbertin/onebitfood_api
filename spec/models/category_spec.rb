require 'rails helper'

RSpec.describe Category, type: :modul do 
  it { is_expect to validate_presence_of(:title) }
end