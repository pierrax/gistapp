require 'rails_helper'

RSpec.describe Gist, :type => :model do
  it { should validate_presence_of :description }
  it { should validate_presence_of :file_name }
  it { should validate_presence_of :code }

  describe '#search' do
    context 'with 2 public gists' do
      it 'returns two gists' do
        create(:gist, description: 'ruby snippet')
        create(:gist, description: 'ruby code')
        create(:gist, description: 'js snippet')
        create(:gist, description: 'ruby line', secret: true)

        expect(Gist.search('ruby').count).to eq(2)
      end
    end

    context 'with 2 secret gists' do
      it 'returns zero gist' do
        create(:gist, description: 'ruby snippet', secret: true)
        create(:gist, description: 'ruby line', secret: true)

        expect(Gist.search('ruby').count).to eq(0)
      end
    end
  end

end
