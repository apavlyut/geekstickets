class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, :message, :user_id, presence: true
  validates :title, uniqueness: true

  state_machine initial: :unprocessed do
    event :update_to_pending do
      transition unprocessed: :pending
    end
  end
end

#Новый необработанный
#Обработан, решение в проработке
#Решение пердоставлено, ждем акцепта автора тикета
#Акцепт получен | спорные моменты (ветвление статуса)
#Тикет поставлен в график работы, дата релиза тогда-то
#Результаты готовы, можно проверять
#Тикет принят | спорные моменты (ветвление статуса)
#Работа принята
#Тикет резолвен.
#Тикет отменен + причина закрытия.

#unprocessed
#pending
#waiting_for_acceptance
#accepted
#in_queue
#ready_for_verification
#approved
#resolved
#cancelled
