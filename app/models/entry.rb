class Entry < ActiveRecord::Base
  default_scope order('created_at ASC').limit(150)

  def self.enqueue(name, computer)
    raise NotImplementedError
  end

  def self.all_before(name)
    raise NotImplementedError
  end
end
