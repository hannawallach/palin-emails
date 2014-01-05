SRC_DIR = src
DATA_DIR = data

$(DATA_DIR)/fixtures.json.tar.gz:
	mkdir -p $(@D)
	wget http://rawdata.sarahsinbox.com/fixtures.json.gz -O $@

$(DATA_DIR)/fixtures.json: $(DATA_DIR)/fixtures.json.tar.gz
	tar zxvf $< -C $(@D)
