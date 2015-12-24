class AddAttachmentLogoToStEmpresas < ActiveRecord::Migration
  def self.up
    change_table :st_empresas do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :st_empresas, :logo
  end
end
