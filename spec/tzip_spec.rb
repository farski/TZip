require 'spec_helper'

describe TZip do
  describe '#lookup_zip' do
    shared_examples_for 'lookup with correct zone' do |zip, zone|
      it "#{zip} #{zone}" do
        expect(lookup_zip(zip)).to eql(zone)
      end
    end

    # Alaska
    %w(99615 99615 99927).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Alaska'
    end

    # Arizona
    %w(85364 85756).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Arizona'
    end

    # Central
    %w(
      37013 38104 38138 38301 49801 49812 49815 49821
      49831 49834 49847 49858 49873 49874 49881 49887
      49892 49893 49896 49920 49935 49938 49968 49969
      60629 66062 67214 58103 58201 58501 66606 68510
      37212
    ).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Central Time (US & Canada)'
    end

    # Eastern
    %w(
      00926 08701 11226 23464 28269 30043 30044 48201
      48109 48439 32308 37604 37917 32207 32216 41017
      40502 46032 48124 48197 48307 48532 48912 49008
      49546 49684 48503 49242 40383
    ).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Eastern Time (US & Canada)'
    end

    # Hawaii
    %w(96716 96839).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Hawaii'
    end

    # Mountain
    %w(59430 79936 84101 87121 97903).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Mountain Time (US & Canada)'
    end

    # Pacific
    %w(
      89110 90011 90650 97701 97301 97330 97225 97504
      97051
    ).each do |zip|
      it_behaves_like 'lookup with correct zone', zip, 'Pacific Time (US & Canada)'
    end
  end
end
