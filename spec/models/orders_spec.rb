RSpec.describe Order, type: :model do
  it { is_expected.to belong_to :restaurant }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:phone_number) }
  it { is_expected.to validate_presence_of(:total_value) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:neighborhood) }
  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:complement) }
end