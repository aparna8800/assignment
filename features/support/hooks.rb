Before do
  unless ENV['BROWSER'].nil?
    @browser = Watir::Browser.new ENV['BROWSER'].to_sym
    @browser.window.maximize
  end
end


After do |scenario|
  unless ENV['BROWSER'].nil?
    @browser.quit
  end

end




