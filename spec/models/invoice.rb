# This is just a test model. It exists in the dummy app
require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'attributes' do
    it { should have_many(:inbound_webhooks) }
  end
end
