RSpec.describe Restaurant, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  #it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:delivery_tax) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:street) }
  it { is_expected.to validate_presence_of(:neighborhood) }
  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:complement) }
  #it { is_expected.to validate_presence_of(:category) }
end