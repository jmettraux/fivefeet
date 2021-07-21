
#
# Specifying fivefeet
#
# Wed Jul 21 18:42:00 JST 2021
#

require 'spec_helper'


describe FeetExpander do

  describe '.expand' do

    {

      "reach 5 ft., " =>
        "reach 5ft 1.5m 1sq, ",

      "**Speed** 40 ft." =>
        "**Speed** 40ft 12m 8sq F",

      "**Move** 0 ft., fly 60 ft. (hover)" =>
        "**Move** 0ft, fly 60ft 18m 12sq tt (hover)",

      #"+4 to hit, range 80/320 ft., one" =>
      #  "+4 to hit, range 80ft 24m 16sq FF / 320ft 96m 64sq 8F, one",
      "+4 to hit, range 80/320 ft., one" =>
        "+4 to hit, range 80ft 24m 16sq FF / 320ft 96m 64sq 4VFFF, one",

      "reach 5 ft. or range 20/60 ft., one" =>
        "reach 5ft 1.5m 1sq or range 20ft 6m 4sq t-2 / 60ft 18m 12sq tt, one",

      #'500 feet' => '500ft 150m 100sq 11Ftt',
      '500 feet' => '500ft 150m 100sq 8VFtt',

      '5ft' => '5ft 1.5m 1sq',
      '10ft' => '10ft 3m 2sq',
      '15ft' => '15ft 4.5m 3sq',
      '20ft' => '20ft 6m 4sq t-2',
      '25ft' => '25ft 7.5m 5sq t-1',
      '30ft' => '30ft 9m 6sq t',
      '35ft' => '35ft 10.5m 7sq F-1',
      '40ft' => '40ft 12m 8sq F',
      #'45ft' => '45ft 13.5m 9sq F+1',
      '45ft' => '45ft 13.5m 9sq V-1',
      #'50ft' => '50ft 15m 10sq tt-2',
      '50ft' => '50ft 15m 10sq V',
      '55ft' => '55ft 16.5m 11sq tt-1',
      '60ft' => '60ft 18m 12sq tt',
      '65ft' => '65ft 19.5m 13sq Ft-1',
      '70ft' => '70ft 21m 14sq Ft',
      '80ft' => '80ft 24m 16sq FF',
      '90ft' => '90ft 27m 18sq ttt',
      '95ft' => '95ft 28.5m 19sq Ftt-1',
      '100ft' => '100ft 30m 20sq Ftt',
      '105ft' => '105ft 31.5m 21sq FFt-1',
      '110ft' => '110ft 33m 22sq FFt',
      '120ft' => '120ft 36m 24sq FFF',
      #'125ft' => '125ft 37.5m 25sq Fttt-1',
      '125ft' => '125ft 37.5m 25sq VFF-1',
      #'130ft' => '130ft 39m 26sq Fttt',
      '130ft' => '130ft 39m 26sq VFF',
      '135ft' => '135ft 40.5m 27sq FFtt-1',
      '140ft' => '140ft 42m 28sq FFtt',
      '145ft' => '145ft 43.5m 29sq FFFt-1',
      '150ft' => '150ft 45m 30sq FFFt',
      '160ft' => '160ft 48m 32sq 4F',
      #'165ft' => '165ft 49.5m 33sq FFttt-1',
      '165ft' => '165ft 49.5m 33sq VFFF-1',
      #'320ft' => '320ft 96m 64sq 8F',
      '320ft' => '320ft 96m 64sq 4VFFF',
      #'400ft' => '400ft 120m 80sq 10F',
      '400ft' => '400ft 120m 80sq 8V',
      #'600ft' => '600ft 180m 120sq 15F',
      '600ft' => '600ft 180m 120sq 12V',

      #'245ft' => '245ft 73.5m 49sq 4Fttt-1',
      '245ft' => '245ft 73.5m 49sq 5V-1',
      #'295ft' => '295ft 88.5m 59sq 6Ftt-1',
      '295ft' => '295ft 88.5m 59sq 4VFtt-1',

    }.each do |k, v|

      it "turns #{k.inspect} into #{v.inspect}" do

        expect(FeetExpander.expand(k)).to eq(v)
      end
    end
  end
end

