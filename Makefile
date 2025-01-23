ZIP_FILE = submission.zip
ZIP_TMP_DIR = /tmp/15799_$(ZIP_FILE)_tmp/
SOURCE_DIR = .

all: submit

submit:
	rm -rf $(ZIP_TMP_DIR)
	rm -f $(ZIP_FILE)
	rsync -av --exclude-from=$(SOURCE_DIR)/.gitignore --exclude-from=$(SOURCE_DIR)/calcite_app/.gitignore --exclude '.git' $(SOURCE_DIR)/ $(ZIP_TMP_DIR)
	cp calcite_app/gradle/wrapper/gradle-wrapper.jar $(ZIP_TMP_DIR)/calcite_app/gradle/wrapper/gradle-wrapper.jar
	cd $(ZIP_TMP_DIR) && zip -r $(ZIP_FILE) .
	mv $(ZIP_TMP_DIR)/$(ZIP_FILE) $(ZIP_FILE)
	rm -rf $(ZIP_TMP_DIR)

clean:
	rm -f $(ZIP_FILE)