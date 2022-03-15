class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthday, :age, :bio

  def age
    ((Time.zone.now - object.birthday.to_time) / 1.year.seconds).floor
  end
end
