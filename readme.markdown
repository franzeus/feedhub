This gem enables you to save form content as github issue.

Use case:

For example, if your website provides a feedback form - instead of saving it
into an extra feedback model, you can open a new issue in a github repo with
the users text.

```ruby
Feedhub::open_issue (subject, body, label)
```