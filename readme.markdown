***Description:***
Use all of the github issue benefits by saving data as github issue.

##Use case:##

For example, if your website provides a feedback form:
Instead of saving it into an extra feedback model, you can autmatically open a new issue in a github repo with the users text and
the according label.

***Benefits:***

* No model, no interface to implement
* Comments (team can discuss feedback)
* Assignments
* Labels (filtering)
* See issues state (open / closed)


##How to use##

***Setup:***
```ruby
# The github account to login. This github account will
# create the issues
Feedhub::set_user(:name => 'github-account', :password => 'user-password')

# The github repository to save the issue
# (I.e. here: webarbeit, feedhub)
Feedhub::set_repo(:account => 'repo-account', :name => 'repo-name')
```

***Open issue:***
```ruby
# params subject, body, label
Feedhub::open_issue(:title => 'The title', :body => 'Here I write a bit more', :label => "question")
```
Throws error if labels does not exists


The open_issue! Method with bang! creates a new label, if it does not already exists
```ruby
# params subject, body, label
Feedhub::open_issue!(:title => 'The title', :body => 'Here I write my feedback', :label => "newlabel")
```