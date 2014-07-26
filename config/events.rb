WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.




  subscribe :action, :to => WritesController, :with_method => :receiveAlert
  # read trigger start or stop, write bind receiveAlert

  subscribe :open_file, :to => ChatsController, :with_method => :open_file
  subscribe :save_file, :to => ChatsController, :with_method => :save_file
  subscribe :close_file, :to => ChatsController, :with_method => :close_file

  subscribe :down_location, :to => WritesController, :with_method => :down_location
  subscribe :move_location, :to => WritesController, :with_method => :move_location
  subscribe :up_location, :to => WritesController, :with_method => :up_location
  subscribe :clear, :to => WritesController, :with_method => :clear



  subscribe :client_connected, to: ChatsController, with_method: :client_connected
  subscribe :client_connected, :to => ChatsController, :with_method => :get_user_count

  subscribe :client_disconnected, to: ChatsController, with_method: :client_disconnected  
  subscribe :client_disconnected, :to => ChatsController, :with_method => :get_user_count
end
