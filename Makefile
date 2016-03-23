build: Dockerfile
	docker build -t slate .
download:
	git clone https://your-slate-source.git ../your-slate-origin
run:
	docker run -p 4567:4567 -v $(pwd)/../your-slate-origin:/app/slate/source -d pedrocesarti/slate-docker
