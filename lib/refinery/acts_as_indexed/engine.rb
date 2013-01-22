module Refinery
  module ActsAsIndexed
    class Engine < Rails::Engine

      initializer "refinery.acts_as_indexed" do
        ActiveSupport.on_load(:active_record) do
          require 'acts_as_indexed'
          ActsAsIndexed.configure do |config|
            config.index_file = Rails.root.join('tmp', 'index')
            config.index_file_depth = 3
            config.min_word_size = 3
          end
        end
      end

    end
  end
end
