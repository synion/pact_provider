# frozen_string_literal: true

require 'rails_helper'
require 'pact/tasks/task_helper'

RSpec.describe 'verify pact' do
  include Pact::TaskHelper
  it 'the contract is fulfilled' do
    handle_verification_failure do
      expect(execute_pact_verify).to eq(0)
    end
  end
end
