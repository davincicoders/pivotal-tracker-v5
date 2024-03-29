require 'spec_helper'

describe PivotalTracker::Membership do
  it "is a Membership" do
    expect(subject).to be_a(PivotalTracker::Membership)
  end

  describe ".all" do
    it "should return an array of memberships" do
      expect(subject.all(899156)).to be_an(Array)
    end
  end

  context ".find" do
    it "should return the given membership" do
      pending "PivotalTracker::Membership"
      # expect(subject.find(3417316)).to be_a(Integer)
      # @project.memberships.find(331832).should be_a(PivotalTracker::Membership)
    end
  end

end

