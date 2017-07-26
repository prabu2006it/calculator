class CalculatorsController < ApplicationController
 def index

 end

 def calculate
  value = params[:value]
  output_array = []
  value.split("/").each do |val|
  output_array << val+"*1.00"
  end
  output_string = output_array.join("/")
  begin
    output = eval(output_string)
    render :json => {status: "true", message: output.round(2)}
  rescue
    render :json => {status: "false", message: "Enter a valid Data"}
  end
 end
end
