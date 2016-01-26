class Confirm < ApplicationMailer
    
    def confirm_email ggobsari_1_mail, ggobsari_2_content
        
         mail from: 'likelionskku@gmail.com', 
                to: ggobsari_1_mail, 
           subject: '[Likelion]성균인 인증 메일입니다',
              body: '인증코드 : ' + ggobsari_2_content 
             
    end    
end
