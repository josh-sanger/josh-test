module ApplicationHelper
    def full_title(page_title = '')
        base_title = 'Josh\'s test site'
        !page_title ? base_title : base_title + ' | ' +  page_title
    end

    def check_if_string_is_empty(the_string = '')
        return 'Yup!' if the_string.empty?
        'The string is NOT empty'
    end

    def check_if_palindrome(the_string = '')
        return "Yup!" if the_string.reverse == the_string
        'No dice'
    end
end
