# Realtor Scheduler Sample

* To run locally:
  * clone repo
  * $bundle install
  * $rake db:create
  * $rake db:migrate
  * $rake db:seed
  * http://localhost:3000/

* To test
  * Select agent1 and request October 28, 2017 3:00PM. The agent is not available and other agents are notified.
  * Select agent3 and request any time. The agent is available and will be notified.