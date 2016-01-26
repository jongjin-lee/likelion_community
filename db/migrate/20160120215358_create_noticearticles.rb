class CreateNoticearticles < ActiveRecord::Migration
  def change
    create_table :noticearticles do |t|

      t.string :notice_title
      t.string :notice_writer
      t.text  :notice_content
      t.string :notice_password
      
      t.timestamps null: false
    end
  end
end
