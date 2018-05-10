.phony: build installer

build:
	docker build -t local/heat-openshift:latest .

installer:
	docker run --rm -it --name openshift-installer \
	--env-file env.list \
	-h installer \
	-v $$(pwd):/workspace \
	-v $(HOME)/.ssh/id_rsa:/root/.ssh/id_rsa:ro \
	--workdir /workspace local/heat-openshift:latest

create:
	openstack stack create -t stack.yaml my-stack

delete:
	openstack stack delete my-stack -y

run:
	while [ true ]; make create; sleep 600; make delete; done;
