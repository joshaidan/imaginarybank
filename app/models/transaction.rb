class Transaction < ApplicationRecord
  belongs_to :account

  after_save :update_account_balance

  def update_account_balance
    self.account.save!    
  end
end
