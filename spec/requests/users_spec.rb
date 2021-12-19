require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users/:id" do
    it 'Swaggerドキュメントとレスポンススキーマが一致すること' do
      user = User.create!(
        user_id: 1,
        name: 'Hoge'
      )

      get user_path(user.id)

      assert_response_schema_confirm
    end
  end
end
