class Declaration < ApplicationRecord
	mount_uploader :piece_pere, FichierUploader
	mount_uploader :piece_mere, FichierUploader
end
