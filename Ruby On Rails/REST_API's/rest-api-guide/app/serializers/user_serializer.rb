class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :facts

  def facts
    object.facts.map do |fact|
      {
        fact: fact.fact,
        likes: fact.likes
      } 
    end
  end
end