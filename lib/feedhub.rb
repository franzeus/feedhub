require 'octokit'

module Feedhub

  def self.set_user name, password
    @user_name = name
    @user_pw   = password
  end

  def self.set_repo repo_account, repo_name
    @repo_user  = repo_account
    @repo_name  = repo_name
    @repository = @repo_user + '/' + @repo_name
  end

  def self.github_auth
    begin
      @@client = Octokit::Client.new(:login => @user_name, :password => @user_pw)
    rescue Exception => e
      puts "Unable to login to github.\n#{e}"
    end
  end

  def self.open_issue issue_title, issue_body, issue_label = 'question'
    begin
      github_auth
      @@client.create_issue(@repository, issue_title, issue_body, { :labels => [issue_label] })
    rescue Exception => e
      puts "Error: Unable to create issue!\n#{e}"
    end
  end

end