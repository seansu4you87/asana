module Asana
  class Tag < Asana::Resource

    alias :create :method_not_allowed
    alias :destroy :method_not_allowed

    def self.all_by_workspace(*args)
      parent_resources :workspace
      all(*args)
    end

    def tasks
      Task.all_by_tag(:params => { :tag_id => self.id })
    end
  
  end
end