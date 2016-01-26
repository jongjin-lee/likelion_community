class SystemController < ApplicationController
    require 'digest/md5'
    
    def myinfo
    end
    
    def authenticate
        @user_mail = current_user.email.split('@')
        current_user.update_attribute(:skku_id, @user_mail.first)
        @code = Digest::MD5.hexdigest(@user_mail.first)
        @sending_code = @code.slice(1..8) 
        current_user.update_attribute(:confirm_code, @sending_code)
    end
    
    def test_confirm
        @kkkk = params[:rrr]

        if( @kkkk == current_user.confirm_code )
            current_user.update_attribute(:authentication, 1)
            redirect_to '/main/main'  
        else
            current_user.update_attribute(:authentication, 2) 
            redirect_to '/system/authenticate'  
        end
    end
       
    def send_mail
        @user_mail = current_user.email
        @confirm_code = current_user.confirm_code
        
        Confirm.confirm_email(@user_mail, @confirm_code).deliver_now
        redirect_to '/system/authenticate'        
    end
    
end
