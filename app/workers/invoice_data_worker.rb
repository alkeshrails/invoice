class InvoiceDataWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(name)
    flash[:notice] = "#{name}Invoice Updated"
  end
end
