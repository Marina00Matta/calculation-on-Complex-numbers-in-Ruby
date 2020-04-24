class ComplexNumber

    @@additions = 0
    @@multiplication = 0
    @@bulk_add = 0
    @@bulk_multiply = 0
    
    attr_accessor :real, :imaginary
  
    def initialize(real=0, imaginary=0)
      @real = real
      @imaginary = imaginary
    end
  
    # def ==(other)
    #   real == other.real && imaginary == other.imaginary
    # end

    def +(other)
        @@additions += 1
        return ComplexNumber.new(self.real + other.real , self.imaginary + other.imaginary)
    end
  
    def *(other)
        @@multiplication += 1
        return ComplexNumber.new(self.real * other.real - self.imaginary*other.imaginary ,
        self.real * other.imaginary + self.imaginary * other.real)
    end

    

    def self.bulk_add(cns)
        sum = cns.first;
        cns.drop(1).each do |cp|
            sum = sum+cp
        end
        @@bulk_add += 1
        return sum;
    end
   
    def self.bulk_multipy(cns)
        total = cns.first;
        cns.drop(1).each do |cp|
            total=total*cp
        end
        @@bulk_multiply += 1 
        return total
    end

    def self.get_stats()
        return "No add operations : #{@@additions}\nNo multiplication operations : #{@@multiplication}\n
        No of bulk add operations : #{@@bulk_add}\nNo of bulk multiply operations: #{@@bulk_multiply}"   
    end

    def to_s
        return "#{self.real} + #{self.imaginary}"
    end

end
    cp1 = ComplexNumber.new(1,2)
    cp2 = ComplexNumber.new(3,23)
    cp3 = cp1 + cp2
    # puts "#{cp1.real} + #{cp1.imaginary}"
    cp4 = cp1 * cp2
    # puts "#{cp1.real} * #{cp1.imaginary}"
    puts cp3
    puts cp4
    
    arr=ComplexNumber.bulk_add([cp1,cp2,cp3,cp4])
    puts arr

    arr2=ComplexNumber.bulk_multipy([cp1,cp2,cp3,cp4])
    puts arr2

    puts ComplexNumber.get_stats()

