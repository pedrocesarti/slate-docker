# slate-docker
Repository to create a container with Docker to serve a API documentation using [Slate](https://github.com/tripit/slate). The main idea here is you keep your documentation in a **private repository** and clone inside this project to run you own documentation with two commands. 

Technologies
------------

* **Git** — Using git to create a repository and version control for all code developed. I used a private (with all my internal documentation) and a public repository to deploy this container. This Github repository have integration with Dockerhub for every push in the *master* branch create a new build in Dockerhub repository.

* **Docker Containers** — The idea was delivery a web application as a final product. So using Docker I create a new image on Dockerhub that configures all stuff needed to run this application.

* **Write code samples in multiple languages** — If your API has bindings in multiple programming languages, you can easily put in tabs to switch between them. In your document, you'll distinguish different languages by specifying the language name at the top of each code block, just like with [Github Flavored Markdown](https://guides.github.com/features/mastering-markdown/).



Running the Container
------------------------------
```shell
docker run -p 4567:4567 -v /absolute/path/for/your/doc/source:/app/slate/source -d pedrocesarti/slate-docker
```
or if you don't have any documentation.

```shell
git clone --recursive https://github.com/pedrocesar-ti/slate-docker.git
cd slate-docker
docker run -p 4567:4567 -v $(pwd)/slate/source:/app/slate/source -d pedrocesarti/slate-docker
```


Repositories used to 
---------------------------------

* [Slate](https://github.com/tripit/slate)
* [Docker Slate](https://github.com/tutumcloud/slate)
* [Docker RBENV](https://github.com/tcnksm/dockerfile-rbenv)
