class Account < ApplicationRecord
  has_many :transactions

  before_save :audit_balance

  enum account_type: [:chequing, :creditline]

  def audit_balance
    self.balance = transactions.all.sum(:amount)
  end
end
