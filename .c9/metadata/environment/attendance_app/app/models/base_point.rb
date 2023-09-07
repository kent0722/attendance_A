{"changed":true,"filter":false,"title":"base_point.rb","tooltip":"/attendance_app/app/models/base_point.rb","value":"class BasePoint < ApplicationRecord\n  \n  validates :base_number, presence: true\n  validates :base_name, presence: true\n  validates :attendance_type, presence: true\nend","undoManager":{"mark":14,"position":14,"stack":[[{"start":{"row":0,"column":0},"end":{"row":2,"column":3},"action":"insert","lines":["class BasePoint < ApplicationRecord","  # 必要なモデルの定義や関連付けを追加します","end"],"id":1}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":24},"action":"remove","lines":["# 必要なモデルの定義や関連付けを追加します"],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"remove","lines":["  "]},{"start":{"row":0,"column":35},"end":{"row":1,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":3},"action":"remove","lines":["class BasePoint < ApplicationRecord","end"],"id":3},{"start":{"row":0,"column":0},"end":{"row":3,"column":3},"action":"insert","lines":["class BasePoint < ApplicationRecord","  validates :attendance_type, presence: true","  # 他のバリデーションルールも必要ならばここに追加","end"]}],[{"start":{"row":2,"column":1},"end":{"row":2,"column":27},"action":"remove","lines":[" # 他のバリデーションルールも必要ならばここに追加"],"id":4},{"start":{"row":2,"column":0},"end":{"row":2,"column":1},"action":"remove","lines":[" "]},{"start":{"row":1,"column":44},"end":{"row":2,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":0,"column":35},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":5},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":2},"end":{"row":3,"column":3},"action":"insert","lines":["validates :attendance_type, presence: true","end"],"id":7}],[{"start":{"row":3,"column":3},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":8}],[{"start":{"row":4,"column":0},"end":{"row":5,"column":3},"action":"insert","lines":["validates :attendance_type, presence: true","end"],"id":9}],[{"start":{"row":5,"column":3},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":10}],[{"start":{"row":5,"column":3},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":11},{"start":{"row":5,"column":2},"end":{"row":5,"column":3},"action":"remove","lines":["d"]},{"start":{"row":5,"column":1},"end":{"row":5,"column":2},"action":"remove","lines":["n"]},{"start":{"row":5,"column":0},"end":{"row":5,"column":1},"action":"remove","lines":["e"]},{"start":{"row":4,"column":42},"end":{"row":5,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":1},"action":"insert","lines":[" "],"id":12},{"start":{"row":4,"column":1},"end":{"row":4,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"remove","lines":["d"],"id":13},{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"remove","lines":["n"]},{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"remove","lines":["e"]},{"start":{"row":2,"column":44},"end":{"row":3,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":2,"column":13},"end":{"row":2,"column":28},"action":"remove","lines":["attendance_type"],"id":14},{"start":{"row":2,"column":13},"end":{"row":2,"column":24},"action":"insert","lines":["base_number"]}],[{"start":{"row":3,"column":13},"end":{"row":3,"column":28},"action":"remove","lines":["attendance_type"],"id":15},{"start":{"row":3,"column":13},"end":{"row":3,"column":22},"action":"insert","lines":["base_name"]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":18},"action":"insert","lines":["belongs_to :user"],"id":17}],[{"start":{"row":0,"column":35},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":17},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":44},"end":{"row":4,"column":44},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1693456352910}