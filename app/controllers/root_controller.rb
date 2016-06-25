class RootController < ApplicationController
  
  def index
    
  end
  
  def show
    pdf = TestReport.new
    send_data pdf.render, type: "application/pdf",
                          disposition: "inline"
  end

end
