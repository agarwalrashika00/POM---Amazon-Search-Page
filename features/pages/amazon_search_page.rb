class AmazonSearchPage
    include PageObject
    SEARCH_BOX = {id: 'twotabsearchtextbox'}
    SEARCH_BUTTON = {id: 'nav-search-submit-button'}

    def visit_site
        @browser.get 'http://www.amazon.com'
    end

    def search_for(search_key)
        @browser.find_element(SEARCH_BOX).send_keys search_key
    end

    def click_search_button
        @browser.find_element(SEARCH_BUTTON).click
    end

    def search_result_present?(search_key)
        @browser.find_element(SEARCH_BOX).attribute('value') == search_key
    end
end