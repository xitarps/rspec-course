require_relative '../movie'
require_relative '../actor'

RSpec.describe Movie do
  let(:stuntman) { double('Mr. Danger', ready?: true,
                                        act: 'Any string at all',
                                        fall_off_ladder: 'Sure, lets do it',
                                        light_on_fire: true) }

  subject { described_class.new(stuntman) }

  # describe "#start_shooting method" do
  #   it 'expects an actor to do 3 actions' do
  #     expect(stuntman).to receive(:ready?)
  #     expect(stuntman).to receive(:act).at_least(2).times
  #     expect(stuntman).to receive(:fall_off_ladder)
  #     expect(stuntman).to receive(:light_on_fire)
  #     subject.start_shooting
  #   end
  # end

  describe "#start_shooting method" do
    it 'expects an actor to do 3 actions' do
      expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act).at_least(2).times
      expect(stuntman).to receive(:act).at_most(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).times
      # expect(stuntman).to receive(:fall_off_ladder).twice
      subject.start_shooting
    end
  end
end
