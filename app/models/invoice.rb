class Invoice < ApplicationRecord
  validates :product_name, :amount, presence: true
  
  after_update :call_job 

  private
  def call_job
    InvoiceDataWorker.perform_async(self.product_name)
  end
end
