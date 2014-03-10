TeamsquareSmsGateway::Application.routes.draw do
  post 'cisco/ise-guest' => 'cisco#ise_guest'

end
