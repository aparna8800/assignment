When(/^I open google website$/) do
  @browser.goto 'https://google.com'

end

And(/^I search (.*) in google page$/) do |word|
  google_search_page = GoogleSearchPage.new(@browser)
  google_search_page.search(word)
end


Then(/^I verify (.*) search results on google page$/) do |word|
  google_search_page = GoogleSearchPage.new(@browser)
  valid_search_result = google_search_page.validate_search_results(word)
  expect(valid_search_result).to eq true
end

