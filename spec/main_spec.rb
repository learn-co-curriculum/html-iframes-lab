require 'webrick'
require 'green_onion'
require 'capybara/rspec'
require 'rspec'
require 'spec_helper'

describe 'index.html' do

  before(:each) do
    @comparison = GreenOnion::Compare.new
    @tolerance = 0.5
  end

  it 'index page should match the solution' do
    solution = './spec/skins/index.html.png'
    student = './spec/skins/index.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'real estate listings page should match the solution' do
    solution = './spec/skins/real-estate-listings.html.png'
    student = './spec/skins/real-estate-listings.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'market report page should match the solution' do
    solution = './spec/skins/market-report.html.png'
    student = './spec/skins/market-report.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'new properties page should match the solution' do
    solution = './spec/skins/new-properties.html.png'
    student = './spec/skins/new-properties.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end

  it 'contact page should match the solution' do
    solution = './spec/skins/contact.html.png'
    student = './spec/skins/contact.html_fresh.png'
    @comparison.percentage_diff(solution, student)
    expect(@comparison.percentage_changed).to be < @tolerance
  end
end