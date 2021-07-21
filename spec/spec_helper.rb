
#
# Specifying fivefeet
#
# Wed Jul 21 18:41:10 JST 2021
#

load 'bin/fivefeet'


module Helpers
end

RSpec.configure do |c|

  c.alias_example_to(:they)
  c.alias_example_to(:so)
  c.include(Helpers)
end

