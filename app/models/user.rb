class User < ApplicationRecord
   has_many :attendances, dependent: :destroy
  before_save { self.email = email.downcase }
  
  validates :name,  presence: true, length: { maximum: 10 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 20 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      #nameが見つからなければ新しく作成
      user = find_by(name: row["name"]) || new
      # CSVからデータを取得し、設定する
      user.attributes = row.to_hash.slice(*updatable_attributes)
      user.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "uid", "name", "password", "password_confirmation"]
  end
end
