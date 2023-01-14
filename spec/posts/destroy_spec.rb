require "rails_helper"

RSpec.describe "Posts", type: :request do

    before do
        Post.create(title: "First Post", body: "This is the first post")
        Post.create(title: "Second Post", body: "This is the second post")

    end

    scenario "Sends a delete request to delete a post" do
                
        delete "http://localhost:3000/posts/1"
        expect(response).to have_http_status(:success)
        

        get "http://localhost:3000/posts"

        expect(response).to have_http_status(:success)
        posts = JSON.parse(response.body)
        expect(posts.length).to eq(1)

        

    end

end