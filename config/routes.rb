TeamsquareSmsGateway::Application.routes.draw do
  post 'cisco/ise-guest' => 'cisco#ise_guest'
  get 'cisco/ise-guest' => 'cisco#head_ise_guest'
end
