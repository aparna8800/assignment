class GoogleSearchPage < BasePage

     element(:search_field) { |b| b.text_field(title: "Search") }

     def search(word)
     	self.search_field.set(word)
     	send_keys(:enter)
     end

     def validate_search_results(word)
     	  Watir::Wait.until { !@browser.title.match(/#{word}/i).nil? }
     end
end
