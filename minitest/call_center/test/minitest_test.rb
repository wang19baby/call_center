require File.expand_path('../../helper', File.dirname(__FILE__))
require 'call_center/test/minitest/dsl'

require File.expand_path('../../../test/examples/call', File.dirname(__FILE__))
require File.expand_path('../../../test/examples/dynamic_transition_call', File.dirname(__FILE__))

describe CallCenter::Test::MiniTest::DSL do
  describe Call do
    subject { Call.new }
    let(:call_center_state_field) { :state }

    it_should_flow { on(:incoming_call).from(:initial).to(:routing).if(:agents_available?) }
    it_should_flow { on(:incoming_call).from(:initial).to(:voicemail).unless(:agents_available?) }
    it_should_render { is(:initial).expects(:notify).selects("Response>Say", "Hello World") }

    it_should_flow { on(:customer_hangs_up).from(:voicemail).to(:voicemail_completed) }
    it_should_render { is(:voicemail).expects(:notify).selects("Response>Say", "Hello World").selects("Response>Record[action=/voice/calls/flow?event=voicemail_complete&amp;actor=customer]") }

    it_should_flow { on(:something_crazy_happens).from(:initial).to(:uh_oh) }

    it_should_flow { on(:customer_hangs_up).from(:cancelled).to(:cancelled).expects(:cancelled) { |e| e.never } }

    it_should_not_flow { on(:incoming_call).from(:voicemail) }
  end

  describe DynamicTransitionCall do
    subject { DynamicTransitionCall.new }
    let(:call_center_state_field) { :state }

    it_should_flow { on(:incoming_call).from(:initial).to(:routing_on_client).if(:agents_available?).unless(:via_phone?).if(:prefer_flash?) }
    it_should_flow { on(:incoming_call).from(:initial).to(:routing_on_client).if(:agents_available?).unless(:via_phone?).unless(:on_mobile?).if(:prefer_flash?) }
    it_should_flow { on(:incoming_call).from(:initial).to(:routing_on_mobile_client).if(:agents_available?).unless(:via_phone?).if(:on_mobile?) }
    it_should_flow { on(:incoming_call).from(:initial).to(:routing_on_webrtc).if(:agents_available?).unless(:via_phone?).unless(:on_mobile?).unless(:prefer_flash?) }
    it_should_flow { on(:incoming_call).from(:initial).to(:routing_on_phone).if(:agents_available?).if(:via_phone?) }

    it_should_flow { on(:incoming_call).from(:initial).to(:voicemail).unless(:agents_available?).unless(:voicemail_full?) }
    it_should_flow { on(:incoming_call).from(:initial).to(:cancelled).unless(:agents_available?).if(:voicemail_full?) }

    it_should_flow { on(:picks_up).from(:routing_on_client).to(:in_conference).unless(:out_of_area?) }
    it_should_flow { on(:picks_up).from(:routing_on_client).to(:cancelled).if(:out_of_area?) }
  end
end
