module Feedhub
  class Feedhuber

    def initialize username password
      @@user_name = username
      @@user_pw   = password
    end

    def set_repo user_repo, repo_name
      @repo_user = repo_user
      @repo_name = repo_name
      @repository = @repo_user + '/' @repo_name
    end

    def github_login
      @@client = Octokit::Client.new(:login => @@user_name, :password => @@user_pw)
    end

    def open_issue issue_title, issue_body, issue_label
      @@client.create_issue(@repository, issue_title, issue_body, { :labels => [ issue_label ]})
    end
end