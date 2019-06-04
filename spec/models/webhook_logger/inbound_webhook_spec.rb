require 'rails_helper'

module WebhookLogger
  RSpec.describe InboundWebhook, type: :model do
    describe 'attributes' do
      it { should belong_to(:webhookable) }
    end


    describe '#successful?' do
      context 'when successful' do
        subject { FactoryBot.build(:inbound_webhook, :succeeded) }

        it 'returns true' do
          expect(subject.successful?).to be true
        end
      end

      context 'when not successful' do
        subject { FactoryBot.build(:inbound_webhook, :failed) }

        it 'returns true' do
          expect(subject.successful?).to be false
        end
      end
    end


    describe '#failed?' do
      context 'when failed' do
        subject { FactoryBot.build(:inbound_webhook, :failed) }

        it 'returns true' do
          expect(subject.failed?).to be true
        end
      end

      context 'when not failed' do
        subject { FactoryBot.build(:inbound_webhook, :succeeded) }

        it 'returns true' do
          expect(subject.failed?).to be false
        end
      end
    end
  end


  describe 'with payload' do
    let(:payload) { fixture_file_upload(Rails.root.join('../fixtures/stripe/charge.json')) }
    subject { FactoryBot.build(:inbound_webhook, payload: payload) }

    it 'attaches the payload file' do
      expect { subject.save }.to change(ActiveStorage::Attachment, :count).by(1)
    end

    it 'has a payload' do
      subject.save
      expect(subject.payload).to be_present
    end
  end
end
