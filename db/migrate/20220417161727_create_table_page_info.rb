class CreateTablePageInfo < ActiveRecord::Migration[7.0]
  def change
    create_table :table_page_infos do |t|
      t.string :title
      t.string :description
      t.string :shortlink
      t.string :youtube_video_link
      t.string :serial_info
      t.timestamps
    end
  end
end
