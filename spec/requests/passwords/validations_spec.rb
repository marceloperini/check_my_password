# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/passwords/validations endpoints', type: :request do
  describe 'POST' do
    subject(:request) do
      post '/passwords/validations', params: { password: password }
    end

    before { request }

    context 'when the passsword are valid' do
      let(:password) { 'rZK8N^8KL!hZ2g' }

      it { expect(response).to have_http_status :ok }
    end

    context 'when the password are invalid' do
      let(:password) { '123456' }

      it { expect(response).to have_http_status(:unprocessable_entity) }

      it { expect(JSON.parse(response.body)['errors']).not_to be_empty }
    end
  end
end
