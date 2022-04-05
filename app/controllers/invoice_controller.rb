class InvoiceController < ApplicationController
  
  def index 
    @all_invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create  
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      redirect_to root_path
    else
      puts "errors"
    end
  end

  def edit
    @edit_invoice = Invoice.find(params[:id])
  end

  def update
    invoice = Invoice.find(params[:id])
    invoice.update(invoice_params)
    redirect_to root_path
  end

  private

  def invoice_params
    params.require(:invoice).permit(:product_name, :amount)
  end

end
