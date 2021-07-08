class ApplicationController < ActionController::API

    

    def current_user
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

    protected
    def must_be_sigining_in
        if current_user.nil?
            render json: {message:"Permissão negada"}
        end
    end
end
