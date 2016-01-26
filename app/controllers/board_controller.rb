class BoardController < ApplicationController
    
############ 1. 자유게시판 구현 #############
######### 글 작성, 열람, 수정, 삭제##########
    def freeboard
        @fr=Freearticle.all
    end 
    
    def freeboard_write
    end
    
    def freeboard_write_process
        fa =Freearticle.new
        fa.free_content = params[:f_contents]
        fa.free_title=params[:f_title]
        fa.free_password=params[:f_password]
        fa.free_writer = current_user.name
        
        fa.save
     
        redirect_to '/board/freeboard'
    end 
    
    def freeboard_detail 
        @this_article = Freearticle.find(params[:id])
    end 

    def freeboard_modify
    end 
    
    def freeboard_delete
    end 

############ 2. 공지게시판 구현 ############# 
######### 글 작성, 열람, 수정, 삭제##########
    def notice
        @nr=Noticearticle.all
    end

    def notice_write
    end 
    
    def notice_write_process
        na =Noticearticle.new
        na.notice_content = params[:n_contents]
        na.notice_title=params[:n_title]
        na.notice_password=params[:n_password]
        na.notice_writer = current_user.name
        
        na.save
     
        redirect_to '/board/notice'
    end 
    
    def notice_detail
        @this_article = Noticearticle.find(params[:id])
    end 
    
end
