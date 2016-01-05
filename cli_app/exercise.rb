class Exercise
  attr_reader :exertion, :balance, :strength, :flexibility, :technicality

  def initialize(args = {})
    @exertion = args[:exertion]
    @balance = args[:balance]
    @strength = args[:strength]
    @flexibility = args[:flexibility]
    @technicality = args[:technicality]
  end
end

