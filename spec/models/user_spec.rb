require 'rails_helper'

RSpec.describe User, type: :model do 

  it 'should have many showings' do 
    should have_many(:showings)
  end 

  it 'creates a user' do 
    user = User.create!(name: 'agent1', email: 'foo@foo.com')
    expect(user.email).to include('foo@foo.com')
  end 

  it 'creates a user showing' do 
    time = Time.zone.now
    user = User.create!(name: 'agent1', email: 'foo@foo.com')
    showing = Showing.create!(start_time: time, user: user)
    expect(user.showings.length).to eq(1)
  end 

end 