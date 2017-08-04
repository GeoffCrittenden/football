require 'google_drive'

class GoogleDriveSession
  class << self
    def session
      @session ||= GoogleDrive::Session.from_service_account_key(GOOGLE_DRIVE_CONFIG)
    end
  end
end
