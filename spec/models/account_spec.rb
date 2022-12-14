describe Account, type: :model do
  subject { build(:account) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_numericality_of(:balance_in_cents) }
  end
end
