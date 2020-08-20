class ApplicationController < ActionController::API

    def user_must_exist
        header = request.headers["Authorization"]
        header = header.split(' ').last if header
        return nil unless header.present?
        @decoded = JsonWebToken.decode(header)
        return nil unless @decoded.present?
        
        user = User.find_by(id: @decoded[0]["user_id"])
    end

    def user_must_exist
        if current_user.present?
            render json: {message: "Você está logado"}
        else
            render json: {message: "deslogado"}
        end
    end
end
