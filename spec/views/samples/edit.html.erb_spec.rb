require 'spec_helper'

describe "samples/edit" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      : => ""
    ))
  end

  it "renders the edit sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => samples_path(@sample), :method => "post" do
      assert_select "input#sample_", :name => "sample[]"
    end
  end
end
