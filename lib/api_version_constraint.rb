class ApiVersionConstraint
  def initialize(options)
    @option = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.hearders['Accept'].include?("application/vnd.taskmanger.v#{@version}")
  end
end