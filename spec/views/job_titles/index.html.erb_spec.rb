require 'rails_helper'

RSpec.describe "job_titles/index", type: :view do
  before(:each) do
    assign(:job_titles, [
      JobTitle.create!(
        name: "Name"
      ),
      JobTitle.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of job_titles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
