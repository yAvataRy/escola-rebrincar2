# Makefile

# Verifica se foi passado um argumento msg
ifndef msg
$(error Você precisa passar a mensagem do commit usando: make commit/main msg="sua mensagem")
endif

commit/main:
	git add .
	git commit -m "$(msg)"
	git push






























# SRC_IMG := public/img/icons/symbol.png
# DEST_DIR := public/img/icons
# FAVICON_DIR := public
# CONVERT_OPTS := -gravity center -flatten -colors 256 -background none

# create_ico:
# 	@echo "Gerando favicons com fundo transparente..."

# 	# Geração dos favicons
# 	convert $(SRC_IMG) -resize 16x16 $(CONVERT_OPTS) PNG32:$(DEST_DIR)/favicon-16x16.png
# 	convert $(SRC_IMG) -resize 32x32 $(CONVERT_OPTS) PNG32:$(DEST_DIR)/favicon-32x32.png
# 	convert $(SRC_IMG) -resize 96x96 $(CONVERT_OPTS) PNG32:$(FAVICON_DIR)/favicon.ico
# 	convert $(SRC_IMG) -resize 96x96 $(CONVERT_OPTS) PNG32:$(FAVICON_DIR)/favicon.png
# 	convert $(SRC_IMG) -resize 16x16 $(CONVERT_OPTS) PNG32:$(DEST_DIR)/favicon.png
# 	convert $(SRC_IMG) -resize 192x192 $(CONVERT_OPTS) PNG32:$(DEST_DIR)/android-chrome-192x192.png

# 	@echo "Todos os ícones foram gerados com fundo transparente!"

# GIFS_SRC_DIR := $(if $(dir),$(dir),./public/img/presentation-page)
# BKP_GIFS_DIR := $(GIFS_SRC_DIR)/bkp_gifs_$(shell date +%Y-%m-%d)
# OPT_GIFS_DIR := $(GIFS_SRC_DIR)/opt_gifs_gifsicle_$(shell date +%Y-%m-%d)
# OPT_GIFS_DIR2 := $(GIFS_SRC_DIR)/opt_gifs_$(shell date +%Y-%m-%d)

# # Regra para copiar todos os arquivos .gif
# bkp_gifs:
# 	mkdir -p $(BKP_GIFS_DIR) # Garante que a pasta de destino seja criada
# 	cp $(SRC_DIR)/*.gif $(BKP_GIFS_DIR) # Copia os arquivos .gif para a pasta de destino

# # Regra para limpar a pasta de destino
# clean_gifs:
# 	rm -rf $(BKP_GIFS_DIR) # Remove a pasta de destino

# reduce_gifs_gifsicle:
# 	# https://www.lcdf.org/gifsicle/man.html
# 	mkdir -p $(OPT_GIFS_DIR) 
# 	@echo "Reduzindo tamanho dos GIFs com gifsicle..."
# 	find $(GIFS_SRC_DIR) -maxdepth 1 -type f -name "*.gif" -exec sh -c '\
# 		for file do \
# 			echo "Otimizando $$file"; \
# 			outfile="$(OPT_GIFS_DIR)/$$(basename $$file)"; \
# 			gifsicle --optimize=3 --colors 64 --lossy=30 --no-conserve-memory "$$file" > "$$outfile"; \
# 		done' sh {} +

# reduce_gifs:
# 	@echo "Reduzindo tamanho dos GIFs fora da pasta de backup..."
# 	mkdir -p $(OPT_GIFS_DIR2) 
# 	find $(OPT_GIFS_DIR) -maxdepth 1 -type f -name "*.gif" -exec sh -c '\
# 		for file do \
# 			echo "Otimizando $$file"; \
# 			outfile="$(OPT_GIFS_DIR2)/$$(basename $$file)"; \
# 			convert "$$file" \
# 				-strip \
# 				-colors 128 \
# 				-layers OptimizeTransparency \
# 				-delay 10 \
# 				"$$outfile"; \
# 		# Verifica se o arquivo otimizado é maior que o original \
# 		if [ -f "$$outfile" ] && [ $$(stat --format=%s "$$outfile") -gt $$(stat --format=%s "$$file") ]; then \
# 			echo "Arquivo otimizado é maior que o original. Removendo $$outfile"; \
# 			rm -f "$$outfile"; \
# 		fi; \
# 		done' sh {} +

# setup/dev:
# 	docker build -t argo_example .

# run/dev:
# 	docker run -it -v ${PWD}:/usr/src/app -v /usr/src/app/node_modules -p 8080:8080 -e VUE_APP_API_URL="https://api.rethinking.wine/api/v1/" -e VUE_APP_REFRESH_TOKEN_TIME_IN_MINUTES=3 argo_example

# Você precisa passar a mensagem do commit usando: 
# make commit/vinicius msg="sua mensagem"

# commit/vinicius:
# 	git add .
# 	git commit -m "$(msg)"
# 	git push origin dev_vini2
# 	git checkout dev
# 	git pull origin dev
# 	git pull origin dev_vini2
# 	git push origin dev
# 	git checkout dev_vini2
# 	git pull origin dev
# 	git push origin dev_vini2


# commit/homolog:
# 	git checkout homolog
# 	git pull origin homolog
# 	git pull origin dev
# 	git push origin homolog
# 	git checkout dev_vini2
# 	git pull origin homolog
# 	git push origin dev_vini2

# commit/main:
# 	git checkout main
# 	git pull origin main
# 	git pull origin homolog
# 	git push origin main
# 	git checkout dev_vini2
# 	git pull origin main
# 	git push origin dev_vini2
