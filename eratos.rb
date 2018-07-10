class Eratosthenes
  def initialize(x)
    @given    = x
    @integers = []
    @primes   = []
  end

  def step1()
    @integers = [*(2..@given)]
  end

  def step2()
    prime = @integers.shift
    @primes << prime
    @integers.reject! { |integer| integer % prime == 0 }.first
  end

  def step3()
    given_sqrt = Math.sqrt(@given)
    until step2 >= given_sqrt do end
  end

  def step4()
    @primes += @integers
  end

  def run()
    step1
    step3
    step4
    puts @primes.join(', ')
  end
end

if __FILE__ == $0
  begin
    Eratosthenes.new(ARGV[0].to_i).run
  rescue
    puts "error!"
    exit!
  end
end
