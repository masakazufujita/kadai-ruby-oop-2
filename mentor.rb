=begin
class Mentor
  # インスタンス変数
  attr_accessor :name
  
  # 初期化メソッドの定義、インスタンス変数nameを初期化
  def initialize(name)
    self.name = name
  end
  
  
  # jobメソッドの定義
  def job
    puts "#{self.name}です。私は現役のITプロフェッショナルです。"
  end
end


class RailsMentor < Mentor
  # jobメソッドをオーバーライド
   def job
     puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります。"
   end
end
 
  # Mentorクラスのインスタンスを生成
    kirameki = Mentor.new('煌木')
     
  # RailsMentorクラスのインスタンスを生成
    akaide = RailsMentor.new('赤出')
    
  # インスタンスのjobメソッドの呼び出し
    kirameki.job
    akaide.job
=end




# Mentorクラスの定義
class Mentor
  
  # 初期化メソッドの定義,インスタンス変数nameを初期化
  def initialize(name)
    @name = name
  end

  # jobメソッドの定義、仕事を紹介する
  def job
    puts "#{@name}です。私は現役のITプロフェッショナルです。"
  end
end

# RailsMentorクラスの定義（Mentorクラスを継承）
class RailsMentor < Mentor
  # jobメソッドをオーバーライド、RailsMentorの仕事の紹介
  def job
    puts "#{@name}です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end

# Mentorクラスのインスタンスを生成
kirameki = Mentor.new("煌木") 

# RailsMentorクラスのインスタンスを生成
akaide = RailsMentor.new("赤出")

# 各インスタンスのjobメソッドを呼び出し、仕事内容を表示
kirameki.job
akaide.job