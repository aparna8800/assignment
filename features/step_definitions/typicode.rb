When(/^I call posts api$/) do
  typicode_service = TypicodeService.new
  @response = typicode_service.call
end


Then(/^I verify posts api results$/) do
  typicode_service = TypicodeService.new
  valid_result = typicode_service.validate_post_result(@response)
  expect(valid_result).to eq true
end

