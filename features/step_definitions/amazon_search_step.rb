require_relative '../pages/amazon_search_page.rb'

Given(/^a user goes to Amazon home page$/) do
    @amazon_page = AmazonSearchPage.new(@browser)
    @amazon_page.visit_site
end

When("user searches for {string}") do |keyword|
    @amazon_page.search_for(keyword)
    @amazon_page.click_search_button
end

Then("site should return result for {string}") do |keyword|
    expect(@amazon_page.search_result_present?(keyword)).to eq(true)
end