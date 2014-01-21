require 'minitest/spec'
require 'minitest/autorun'

require 'welcome'

describe Welcome do
  it 'has a message' do
    hello = Welcome.new
    hello.message.must_match 'Welcome'
  end
end

describe 'A local web page' do
  it 'has a welcome headline' do
    visit "#{File.dirname(__FILE__)}/../index.html"
    page.text.must_include 'Welcome aboard'
  end
end
