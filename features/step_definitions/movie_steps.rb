# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
  #flunk "Unimplemented"
end

Then /the director of "(.*)" should be "(.*)"/ do |e1, e2|
  #flunk "Unimplemented"
  regexp = Regexp.new ".*#{e1}.*#{e2}"
  regexp = Regexp.new "[#{e1}&&#{e2}]"
  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end
