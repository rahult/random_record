require 'active_record' unless defined? ActiveRecord::Base

module ActiveRecord

  module RandomRecord

    def random(count=1)
      count == 1 ? offset(rand(self.count)).first : all.sort_by { rand }.sort_by { rand }.slice(0...count)
    end

  end

end

ActiveRecord::Base.send :extend, ActiveRecord::RandomRecord
