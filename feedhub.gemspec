Gem::Specification.new do |s|
  s.name        = 'feedhub'
  s.version     = '0.2.3'
  s.date        = '2012-05-25'
  s.summary     = "Save user feedback as github issue"
  s.description = "Save data (from a form or from s.t. else) as github issue"
  s.authors     = ["Francois Weber"]
  s.email       = 'webarbeit@gmail.com'
  s.files       = ["lib/feedhub.rb"]
  s.homepage    = 'https://github.com/webarbeit/feedhub'
  s.add_dependency("octokit")
end