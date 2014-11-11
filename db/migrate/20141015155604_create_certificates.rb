class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.integer :certificate_number
      t.integer :machine_id
      t.integer :customer_id
      t.integer :test_weight_id_1
      t.integer :test_weight_id_2
      t.integer :test_weight_id_3

      t.string :customer_reference
      t.date :next_certification_date
      t.text :comments
 
      t.string :tolerance_1_range
      t.string :tolerance_2_range
      t.string :tolerance_3_range
      t.string :tolerance_1_actual
      t.string :tolerance_2_actual
      t.string :tolerance_3_actual

      # Results Table As Found

      t.string :testpoint_1
      t.string :testpoint_2
      t.string :testpoint_3
      t.string :testpoint_4
      t.string :testpoint_5
      t.string :testpoint_6


      # Definitive Results
 

      t.string :definitive_testpoint_1
      t.string :definitive_testpoint_2
      t.string :definitive_testpoint_3
      t.string :definitive_testpoint_4
      t.string :definitive_testpoint_5
      t.string :definitive_testpoint_6


      t.string :definitive_testpoint_1_dev
      t.string :definitive_testpoint_2_dev
      t.string :definitive_testpoint_3_dev
      t.string :definitive_testpoint_4_dev
      t.string :definitive_testpoint_5_dev
      t.string :definitive_testpoint_6_dev

      t.string :repeatability_1_unloaded
      t.string :repeatability_1_loaded
      t.string :repeatability_2_unloaded
      t.string :repeatability_2_loaded
      t.string :repeatability_3_unloaded
      t.string :repeatability_3_loaded
      t.string :repeatability_4_unloaded
      t.string :repeatability_4_loaded
      t.string :repeatability_5_unloaded
      t.string :repeatability_5_loaded
      t.string :repeatability_6_unloaded
      t.string :repeatability_6_loaded

      t.string :definitive_repeatability_1_load
      t.string :definitive_repeatability_1_result_1
      t.string :definitive_repeatability_1_result_2
      t.string :definitive_repeatability_1_result_3

      t.string :definitive_repeatability_2_load
      t.string :definitive_repeatability_2_result_1
      t.string :definitive_repeatability_2_result_2
      t.string :definitive_repeatability_2_result_3

      t.string :definitive_repeatability_3_load
      t.string :definitive_repeatability_3_result_1
      t.string :definitive_repeatability_3_result_2
      t.string :definitive_repeatability_3_result_3

      t.string :definitive_eccentric_1
      t.string :definitive_eccentric_2
      t.string :definitive_eccentric_3
      t.string :definitive_eccentric_4
      t.string :definitive_eccentric_5
      t.string :definitive_eccentric_6
      t.string :definitive_eccentric_7
      t.string :definitive_eccentric_8

      t.string :definitive_eccentric_1_dev
      t.string :definitive_eccentric_2_dev
      t.string :definitive_eccentric_3_dev
      t.string :definitive_eccentric_4_dev
      t.string :definitive_eccentric_5_dev
      t.string :definitive_eccentric_6_dev
      t.string :definitive_eccentric_7_dev
      t.string :definitive_eccentric_8_dev

      # End of results Table

      t.string :user_name
      t.date :date_completed
      t.timestamps
    end
  end
end
