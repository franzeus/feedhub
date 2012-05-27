require 'octokit'

module Feedhub

  # Set github account
  def self.set_user auth
    @user_name = auth[:name]
    @user_pw   = auth[:password]
  end

  # Set repo
  def self.set_repo repo
    @repo_user  = repo[:account]
    @repo_name  = repo[:name]
    @repository = @repo_user + '/' + @repo_name
  end

  # Authenticate user
  def self.github_auth
    begin
      @@client = Octokit::Client.new(:login => @user_name, :password => @user_pw)
    rescue Exception => e
      puts "Unable to login to github.\n#{e}"
    end
  end

  # Return label if label exists
  def self.label_exists name
    github_auth
    begin
      @@client.label(@repository, name)
    rescue
      puts "This label does not exists"
      false
    end
  end

  # create a new label
  def self.create_label name, color = "FF0000"
    @@client.add_label(@repository, name, color) if !label_exists(name)
  end

  # Open issues
  def self.open_issue issue
    github_auth
    
    puts issue[:label]
    return false if !label_exists(issue[:label])

    begin
      @@client.create_issue(@repository, issue[:title], issue[:body], { :labels => [issue[:label]] })
    rescue Exception => e
      puts "Error: Unable to create issue!\n#{e}"
    end
  end

  # opens issue and creates label if it does not exists
  def self.open_issue! issue
    github_auth
    begin
      create_label(issue[:label]) if !label_exists(issue[:label])
      @@client.create_issue(@repository, issue[:title], issue[:body], { :labels => [issue[:label]] })
    rescue Exception => e
      puts "Error: Unable to create issue!\n#{e}"
    end
  end
end