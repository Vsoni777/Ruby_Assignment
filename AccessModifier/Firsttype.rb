
class First_type
  
  public
  def public_method
    puts "in public method1"
    #we can also call it in method
    private_method_defined
    protect_method
  end

  protected
  def protect_method
    puts "in protected method2"
  end

  private
  def private_method_defined
    puts "in private method"
  end
end

#create object of that file
obj=First_type.new
#it can call using instance method
obj.public_method
#it can't Access it method
#obj.method2

#sub class has access to protected method
class Second < First_type
  
  def to_callprotect
    #sub class can private method access it
    self.private_method_defined
    self.protect_method
  end
end

Second.new.to_callprotect