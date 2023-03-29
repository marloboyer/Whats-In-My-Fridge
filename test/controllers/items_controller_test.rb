require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/items.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Item.count, data.length
  end

  test "create" do
    assert_difference "Item.count", 1 do
      post "/items.json", params: { name: "Eggs", category: "Poultry", lives_At: "Frige", best_by: "3/25/2023" }
      assert_response 200
    end
  end
end
