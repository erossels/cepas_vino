class Wine < ApplicationRecord
  has_many :assemblies, dependent: :destroy
  has_many :strains, through: :assemblies
  has_many :reviews, dependent: :destroy
  has_many :oenologists, through: :reviews
  accepts_nested_attributes_for :assemblies
  accepts_nested_attributes_for :reviews

  def order_strains
    strains = []
    self.assembly_ids.each do |assembly_id|
      strains.append(Strain.find(Assembly.find(assembly_id).strain_id).to_s+' ['+Assembly.find(assembly_id).percentage.to_s+'%]')
    end

    strains = strains.sort
  end

end
