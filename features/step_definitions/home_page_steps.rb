Given(/^there's a post friend "(.*?)" with "(.*?)" content$/) do |title, content|
  @post = FactoryGirl.create(:post, title: title, content: content)
end

When(/^I am on the homepage$/) do
  visit "/"
end

Then(/^I Should see the "(.*?)" post$/) do |title|
  @post = Post.find_by(title: title)
  expect(page).to have_content(@post.title)
  expect(page).to have_content(@post.content)
end