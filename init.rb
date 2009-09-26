config.after_initialize do
  require 'comment_notifier'
  ActiveRecord::Base.observers << :comment_notifier_observer
  ActiveRecord::Base.instantiate_observers
end
