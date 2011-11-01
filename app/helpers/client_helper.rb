module ClientHelper

  def twilio_token
    capability = Twilio::Util::Capability.new TwilioAccountSID, TwilioAuthToken
    capability.allow_client_outgoing "AP84d107eb0dbd0a2518c536c6ce652f8f"
    capability.allow_client_incoming 'jenny'
    capability.generate
  end
end
