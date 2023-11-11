.PHONY: restart_mysql
restart_mysql:
	sudo systemctl restart mysql

.PHONY: restart_nginx
restart_nginx:
	sudo systemctl restart nginx

.PHONY: restart_application
restart_application:
	cd webapp/golang && ./setup.sh
	sudo systemctl restart isu-go.service
