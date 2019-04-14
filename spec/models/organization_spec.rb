# frozen_string_literal: true

require "rails_helper"

RSpec.describe Organization, type: :model do
  describe "factory" do
    let(:org) { create(:organization) }
    it { expect(org).to be_valid }
  end
end
