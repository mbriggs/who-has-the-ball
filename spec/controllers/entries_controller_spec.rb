require 'spec_helper'

describe EntriesController do

  context "creating" do
    before do
      Entry.stub(:all_before).and_return(["foo"])
      Entry.stub(:enqueue)
    end

    def create(args={computer: 'computer', name: 'name'})
      post 'create', args
    end

    it "adds entries" do
      Entry.should_receive(:enqueue).with('name', 'computer')
      create
    end

    it "tells you who is ahead of you" do
      create

      response.should be_successful
      response.body.should == '["foo"]'
    end
  end

  it "marks an entry as complete"
  it "shows who is ahead of you"
  it "deactivates an entry"
end
