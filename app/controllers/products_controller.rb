class ProductsController < ApplicationController
  protect_from_forgery
  require 'httparty'
  require 'securerandom'

  # GET /products
  def create
    @product = Product.new(product_params)
    if @product.save
      notify_webhooks(@product, :create)
      render json: @product, status: :created, location: product_path(@product)
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/:id
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      notify_webhooks(@product, :update)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def notify_webhooks(product, action)
    # Fetch configured webhook endpoints
    endpoints = fetch_webhook_endpoints

    # Prepare data for notification
    data = {
      product: product.as_json,
      action:
    }

    # Send notification to each endpoint with signature
    endpoints.each do |endpoint|
      # Generate signature
      signature = generate_signature(data)

      # Send POST request to the endpoint with the data and signature
      response = HTTParty.post(endpoint,
                               body: data.to_json,
                               headers: { 'Content-Type' => 'application/json', 'X-Signature' => signature })

      # Log the response for debugging purposes
      puts "Response from #{endpoint}: #{response.code} #{response.message}"
    rescue StandardError => e
      # Log the error for debugging purposes
      puts "Error sending notification to #{endpoint}: #{e.message}"
    end
  end

  def fetch_webhook_endpoints
    Rails.configuration.x.webhook_endpoints
  end

  def generate_signature(data)
    # Generate a signature using the data and a secret key
    secret = SecureRandom.hex(64)
    OpenSSL::HMAC.hexdigest('SHA256', secret, data.to_json)
  end
end
