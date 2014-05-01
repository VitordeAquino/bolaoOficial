class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_save :default_values

  has_many :games
  has_many :pins
  accepts_nested_attributes_for :games

  validates :email,:nome, :uniqueness => true

  def default_values
    self.pontos ||= 0
    self.placar ||= 0
    self.resultado ||= 0
    self.pontosGrupoBrasil ||= 0
  end
  
 end

