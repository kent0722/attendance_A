{"filter":false,"title":"20230915093840_add_overtime_approval_status_and_overtime_instructor_to_attendances.rb","tooltip":"/attendance_app/db/migrate/20230915093840_add_overtime_approval_status_and_overtime_instructor_to_attendances.rb","undoManager":{"mark":4,"position":4,"stack":[[{"start":{"row":1,"column":12},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":3},{"start":{"row":2,"column":0},"end":{"row":2,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":2,"column":4},"end":{"row":3,"column":54},"action":"insert","lines":[" add_column :attendances, :overwork_next_day, :boolean","    add_column :attendances, :overwork_status, :string"],"id":4}],[{"start":{"row":3,"column":3},"end":{"row":3,"column":4},"action":"insert","lines":["　"],"id":5}],[{"start":{"row":0,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["class AddOvertimeApprovalStatusAndOvertimeInstructorToAttendances < ActiveRecord::Migration[5.1]","  def change","     add_column :attendances, :overwork_next_day, :boolean","   　 add_column :attendances, :overwork_status, :string","  end","end",""],"id":6},{"start":{"row":0,"column":0},"end":{"row":5,"column":3},"action":"insert","lines":["AddOvertimeApprovalStatusAndOvertimeInstructorToAttendances < ActiveRecord::Migration[5.1]","  def change","    add_column :attendances, :overtime_approval_status, :string","    add_column :attendances, :overtime_instructor, :string","  end","end"]}],[{"start":{"row":0,"column":0},"end":{"row":5,"column":3},"action":"remove","lines":["AddOvertimeApprovalStatusAndOvertimeInstructorToAttendances < ActiveRecord::Migration[5.1]","  def change","    add_column :attendances, :overtime_approval_status, :string","    add_column :attendances, :overtime_instructor, :string","  end","end"],"id":7},{"start":{"row":0,"column":0},"end":{"row":5,"column":3},"action":"insert","lines":["class AddOvertimeApprovalStatusAndOvertimeInstructorToAttendances < ActiveRecord::Migration[5.1]","  def change","    add_column :attendances, :overtime_approval_status, :string","    add_column :attendances, :overtime_instructor, :string","  end","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":30},"end":{"row":3,"column":49},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":40,"mode":"ace/mode/ruby"}},"timestamp":1694771677136,"hash":"968ae5683abd930978081a4486ff7b575c7e90ea"}