RSpec.describe '#even? method' do
  # it 'should return true if the number given is even' do
  # end

  # it 'should return false if the number given is odd' do
  # end

  context 'with odd number' do
    it 'should return true' do
      expect(2.even?).to eq(true)
    end
  end

  context 'with even number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end