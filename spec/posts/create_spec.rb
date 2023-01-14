require "rails_helper"

RSpec.describe "Posts", type: :request do

    scenario "Sends a post request to create a post" do

        post "http://localhost:3000/posts", params: {post: {title: "First Post", body: "This is the first post"}}

        expect(response).to have_http_status(:success)
        post = JSON.parse(response.body)
        expect(post["title"]).to eq("First Post")
        expect(post["body"]).to eq("This is the first post")

    end
end