Dir[File.join(File.dirname(__FILE__), '.../pages/*_page.rb')].each{|file| require file}

module Pages

    #login
    def user
        @user ||= User.new
    end

    #buy
    def buy
        @buy ||= Buy.new
    end

    #freight
    def freightSulSuldeste
        @freightSulSuldeste ||= FreightSulSuldeste.new
    end
   
    #UTIL
    def header
        @header ||= Header.new
    end    
    def footer
        @footer ||= Footer.new
    end
    def login
        @login ||= Login.new
    end
    def product
        @product ||= Product.new        
    end
    def cart
        @cart ||= Cart.new
    end
    def checkout
        @checkout ||= Checkout.new
    end
    def confirmation
        @confirmation ||= Confirmation.new
    end
    def background
        @background ||= BackGround.new
    end

  
end