require 'spec_helper'

describe YNAB::TransactionDetail do
  subject(:transaction) { described_class.new() }

  describe '#flag_color' do
    it 'allows setting an unsupported value' do
      expect { transaction.flag_color = 'invalidFlagName' }.not_to raise_error
    end
  end
end
