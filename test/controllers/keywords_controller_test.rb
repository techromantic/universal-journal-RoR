require 'test_helper'

class KeywordsControllerTest < ActionController::TestCase

def setup

@keyword = Keyword.create(name: "relationships")

end

test "should get keywords index" do

get :index

assert_response :success

end

test "should get new" do

get :new

assert_response :success

end

test "should get show" do

get(:show, {'id' => @keyword.id})

assert_response :success

end

end