require 'rails_helper'

RSpec.describe Showing, type: :model do 

  let(:user) {User.create!(name: 'agent1', email: 'foo@foo.com')}

  it 'should belong to a user' do 
    should belong_to(:user)
  end 

  it 'should create a showing' do 
    time = Time.zone.now
    showing = Showing.create!(start_time: time, user: user)
    expect(showing.start_time).to eq(time)
    expect(showing.user.name).to eq('agent1')
  end 

end 
