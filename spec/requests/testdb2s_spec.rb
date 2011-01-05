require 'spec_helper'

describe "Testdb2s" do
  describe "GET /testdb2s" do
    it "works! (now write some real specs)" do
      visit testdb2s_path
      response.status.should be(200)
    end
  end
end
