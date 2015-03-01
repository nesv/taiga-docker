all: taiga-back

taiga-back:
	make -C $@

clean:
	make -C taiga-back $@

.PHONY: taiga-back clean
