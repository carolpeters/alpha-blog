require 'test_helper'

class Article_test < ActiveSupport::TestCase
  
  def setup
    @article = Article.new(title: "My Vacation", description: "30 days on Cape Cod with Tova", user_id: 1)
  end
  
  test "article should be valid" do
    assert @article.valid?
  end
  
  test "title should be present" do
    @article.title = " "
    assert_not @article.valid?
  end
  
  test "title should not be too long" do
    @article.title = 'a' * 51
    assert_not @article.valid?
  end
  
  test "title should not be too short" do
    @article.title = "aa"
    assert_not @article.valid?
  end
  
  test "description should not be too long" do
    @article.description = 'a' * 301
    assert_not @article.valid?
  end
  
  test "description should not be too short" do
    @article.description = "aaaaaaaaa"
    assert_not @article.valid?
  end
  
end
