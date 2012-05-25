***Description:***
Use all of the github issue benefits by saving data as github issue.

##Use case:##

For example, if your website provides a feedback form:
Instead of saving it into an extra feedback model, you can autmatically open a new issue in a github repo with the users text and
the according label.

***Benefits:***

* No model, no interface to implement
* Team can discuss feedback
* Labels (filtering)
* See closed issues


##How to use##

***Setup:***
```ruby
# The github account to login. This github account will
# create the issues
Feedhub::set_user('github-account', 'user-password')

# The github repository to save the issue
# I.e. here: Feedhub::set_repo(webarbeit, feedhub)
Feedhub::set_repo('repo-account', 'repo-name')
```

***Open issue:***
```ruby
# in your controller method
# params subject, body, label
Feedhub::open_issue('The title', 'Here I write a bit more', "question")
```