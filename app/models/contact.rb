class Contact < ApplicationRecord
  belongs_to :user
  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end
  def full_name
    split_name=self.name.split(" ")
    full_name=""
    if self.middle_name
      full_name+=split_name[0] +" "+self.middle_name+" "+split_name[1]
    else
      full_name+=split_name[0]+" "+split_name[1]
    end
  end
end
