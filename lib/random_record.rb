require 'active_record' unless defined? ActiveRecord::Base

module ActiveRecord

  module RandomRecord

    def random
      offset(rand(self.count)).first
    end

  end

end

ActiveRecord::Base.send :extend, ActiveRecord::RandomRecord
