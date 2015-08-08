if Rails.env.production?
 	Rails.configuration.stripe = {
  		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  		:secret_key      => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_Nq8Ujdve5MrzWIWzuKeMttw0',
		:secret_key      => 'sk_test_VM1Cs1LtgLNsmzzeDBf65AAe'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]