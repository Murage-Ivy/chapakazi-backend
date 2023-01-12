class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :budget
  belongs_to :customer

  def summary
    "#{self.object.description[0..200]}..."
  end
end
