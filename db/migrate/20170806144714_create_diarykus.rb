class CreateDiarykus < ActiveRecord::Migration[5.0]
  def change
    create_table :diarykus do |t|
	    t.string :nama
		t.string :catatan
		t.string :lokasi
	    t.timestamps
    end
  end
end
