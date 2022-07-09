class AmazonSearchPage
    include PageObject

    def visit_site
        @browser.get 'http://www.amazon.com'
    end

    def search_for(search_key)
        @browser.find_element(:id,'twotabsearchtextbox').send_keys search_key
    end

    def click_search_button
        @browser.find_element(:id,'nav-search-submit-button').click
    end

    def search_result_present?(search_key)
        @browser.find_element(:id,'twotabsearchtextbox').attribute('value') == search_key
    end
end