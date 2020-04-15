class Login
    include Capybara::DSL

    def digita_email(email)
        find(:id, 'email').set email 
    end

    def digita_senhal(senha)
        find(:id, 'passwd').set senha 
    end
end
