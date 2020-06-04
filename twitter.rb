class User 
  has_many :artive_relationships, class_name: "Relationship", foreign_key: follower_id
  has_many followeds, through: :active_relationships
end

class Relationship
  
end

User.active_relationship

User.followeds