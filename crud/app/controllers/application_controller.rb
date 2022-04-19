class ApplicationController < ActionController::Base
    def shw
        puts "----hi"
    end
    private
    def find_user
        puts "---in app--------------------------"
        @user=User.find(params[:id])
    end
end
