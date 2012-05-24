This gem is not useful yet!

*Description:*
Use all of the github issue benefits by saving data as github issue.

##Use case:##

For example, if your website provides a feedback form:
Instead of saving it into an extra feedback model, you can autmatically open a new issue in a github repo with the users text and
the according label.

*Benefits:*

* No model, no interface to implement
* Team can discuss feedback
* Labels


##How to use##

*Open issue:*
```ruby
# in your controller method
Feedhub::open_issue (subject, body, label)
```

... coming soon!