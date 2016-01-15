require "spec_helper"
describe TZip do
    # Alaska
    %w(99615 99615 99927).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Alaska' }
    }

    # Arizona
    %w(85364 85756).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Arizona' }
    }

    # Central
    %w(37013 38104 38138 38301 60629 66062 67214 58103 58201 58501 66606 68510).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Central Time (US & Canada)' }
    }

    # Eastern
    %w(00926 08701 11226 23464 28269 30043 30044 48201 48109 32308 37604 37917 32207 32216 41017 40502 46032 48124 48197 48307 48532 48912 49008 49546 49684 48503 49242).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Eastern Time (US & Canada)' }
    }

    # Hawaii
    %w(96716 96839).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Hawaii' }
    }

    # Mountain
    %w(59430 79936 84101 87121 97903).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Mountain Time (US & Canada)' }
    }

    # Pacific
    %w(89110 90011 90650 97701 97301 97330 97225 97504 97051).each{|zip|
      it { print zip; lookup_zip(zip).should == 'Pacific Time (US & Canada)' }
    }

  describe '.find_by_zipcode' do
    context 'Tennessee' do
      let(:zips) { %w(38464) }
      let(:timezone) { 'Central Time (US & Canada)' }
      it 'matches Central Time (US & Canada)' do
        zips.each do |zip|
          expect(lookup_zip(zip)).to eq timezone
        end
      end
    end

    context 'Michigan' do
      let(:zips) { %w(48439) }
      let(:timezone) { 'Eastern Time (US & Canada)' }
      it 'matches Eastern Time' do
        zips.each do |zip|
          expect(lookup_zip(zip)).to eq(timezone), zip
        end
      end
    end
  end
end
