require "spec_helper"

describe TZip do

  describe "Alaska" do
    %w(99615 99615 99927).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Alaska' }
    }
  end

  describe "Arizona" do
    %w(85364 85756).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Arizona' }
    }
  end

  describe "Central" do
    %w(37013 60629 66062 67214 58103).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Central Time (US & Canada)' }
    }
  end

  describe "Eastern" do
    %w(00926 08701 11226 23464 28269 30043 30044 48201 48109 32308 37604 37917 32207 32216).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Eastern Time (US & Canada)' }
    }
  end

  describe "Hawaii" do
    %w(96716 96839).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Hawaii' }
    }
  end

  describe "Mountain" do
    %w(59430 79936 84101 87121 97903).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Mountain Time (US & Canada)' }
    }
  end

  describe "Pacific" do
    %w(89110 90011 90650 97701 97301 97330 97225 97504).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Pacific Time (US & Canada)' }
    }
  end

end
