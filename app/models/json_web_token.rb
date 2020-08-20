class JsonWebToken
    secret = ENV["DEVISE_JWT_SECRET_KEY"]
    
    def self.enconde(payload)
        JWT.enconde(payload, secret)
    end

    def self.decode(token)
        begin
            
            decoded: JWT.decode(token, secret)
        rescue => exception
            return nil
        end
    end
end