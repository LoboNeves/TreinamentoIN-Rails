class User < ApplicationRecord
    has_secure_password

    enum kind: {
        admin:0,
        standard: 1
    }
end
