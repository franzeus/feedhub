require "feedhub"
Feedhub::set_user('playtin', 'platin3')
Feedhub::set_repo('playtin', 'Support')
Feedhub::open_issue('Test 0.2.2', 'Here I write a bit more', "question")