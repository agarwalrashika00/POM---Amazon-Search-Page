class AmazonSearchPage
    include PageObject
    text_field(:search_box, :id => 'twotabsearchtextbox')
    button(:search, :id => 'nav-search-submit-button')

    def visit_site
        @browser.get 'http://www.amazon.com'
    end

    def search_for(search_key)
        self.search_box = search_key
    end

    def click_search_button
        search
    end

    def search_result_present?(search_key)
        search_box == search_key
    end
end