require 'rails_helper'

RSpec.describe QuestionsController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/questions/1').to route_to('questions#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/questions/1/edit').to route_to('questions#edit', id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: '/questions/1').to route_to('questions#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/questions/1').to route_to('questions#update', id: '1')
    end
  end
end
