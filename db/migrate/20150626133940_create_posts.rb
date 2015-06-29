class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body,    :null => false
      t.string :title,    :null => false
      t.string :author
      t.timestamp null: false
    end
  end
end

# #<Post id: 1, body: "", title: "", author: "">
# >> title (emtpy string) IS NOT NULL
# #<Post id: 1, body: "", author: ""> >> title is null

