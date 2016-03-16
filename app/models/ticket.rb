class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :comments
  validates :title, :message, :user_id, presence: true
  validates :title, uniqueness: true

  state_machine initial: :unprocessed do
     event :update_to_pending do
       transition unprocessed: :pending
    end

     event :update_to_waiting_for_acceptance do
       transition pending: :waiting_for_acceptance
    end

     event :update_to_accepted do
       transition waiting_for_acceptance: :accepted
     end

     event :update_to_in_queue do
       transition accepted: :in_queue
     end

     event :update_to_ready_for_verification do
       transition in_queue: :ready_for_verification
     end

     event :update_to_approved do
       transition ready_for_verification: :approved
     end

     event :update_to_cacelled do
       transition ready_for_verification: :cancelled
     end

     event :update_to_resolved do
     transition ready_for_verification: :resolved
   end
  end

   def status
     case self.state
     when "unprocessed"
       "Новый необработанный"
     when "pending"
       "Обработан, решение в проработке"
     when "accpted"
       "Акцепт получен"
     when "in_queue"
       "Тикет поставлен в график работы, дата релиза тогда-то"
     when "ready_for_verification"
       "Результаты готовы, можно проверять"
     when "approved"
       "Тикет принят"
     when "cancelled"
       "Тикет отменен"
     when "resolved"
       "Тикет сделан"
     else
       "Произошла ошибка"
     end
   end
end
