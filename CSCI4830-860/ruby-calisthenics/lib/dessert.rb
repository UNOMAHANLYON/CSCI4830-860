class Dessert
  attr_reader :name
  attr_reader :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    return @calories < 200 ? true : false
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + "jelly bean"
    @calories = 5
  end
  def delicious?
    return flavor == "licorice" ? false : super
  end
end
