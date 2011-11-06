namespace :daemons do
  desc "Printing Daemon"
  task :printer => :environment do
    logger = Rails.logger
    logger.debug "Starting the printer worker"
    logger.debug "#{Connection.all.first.inspect}"
    logger.debug "Exiting the printer worker"
  end
end