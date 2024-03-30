require 'rails_helper'

RSpec.describe '/products', type: :request do
  let(:product) { Product.create(name: 'Plushy Toy', price: 100) }

  describe 'POST /products' do
    it 'creates a new product' do
      expect do
        post '/products', params: { product: { name: 'Plushy Toy', price: 100 } }
      end.to change(Product, :count).by(1)

      expect(response).to have_http_status(:created)
      expect(response.location).to eq("/products/#{Product.last.id}")
    end
  end

  describe 'PUT /products/:id' do
    it 'updates an existing product' do
      put "/products/#{product.id}", params: { product: { price: 200 } }

      expect(response).to have_http_status(:ok)
      expect(product.reload.price).to eq(200)
    end
  end
end
