require 'rails_helper'

RSpec.describe QuestionsController, :type => :controller do

  it "should return JSON file" do
  	json = "{
	  \"id\": 2,
	  \"question\": \"Do you think dogs should be allowed everywhere people are?\",
	  \"animal\": \"dog\",
	  \"created_at\": \"2014-10-09T19:38:09.924Z\",
	  \"updated_at\": \"2014-10-09T19:38:09.924Z\"
	}"
  	question = double(:to_json => json)
    allow(Question).to receive(:pluck) { [1,2,3,4,5,6] }
    allow(Question).to receive(:find_by_id) { question }

    get :rand
    expect(response.body).to eq(json)
  end


end
