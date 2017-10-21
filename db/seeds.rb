User.destroy_all
user1 = User.create!(name: 'agent1', email: 'agent1@agent.com')
user2 = User.create!(name: 'agent2', email: 'agent2@agent.com')
User.create!(name: 'agent3', email: 'agent3@agent.com')
User.create!(name: 'agent4', email: 'agent4@agent.com')
User.create!(name: 'agent5', email: 'agent5@agent.com')
Showing.destroy_all
Showing.create!(start_time: '2017-10-28T21:00:00.000Z', user_id: user1.id)
Showing.create!(start_time: '2017-10-28T21:00:00.000Z', user_id: user2.id)
