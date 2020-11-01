require 'rails_helper'

RSpec.describe "job_titles/show", type: :view do
  before(:each) do
    @job_title = assign(:job_title, JobTitle.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
