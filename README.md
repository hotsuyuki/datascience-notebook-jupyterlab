# How to run

This is a [docker image](https://hub.docker.com/r/hotsuyuki/datascience-notebook-jupyterlab) for jupyterlab with awesome extensions below.

* [lckr/jupyterlab-variableInspector](https://github.com/lckr/jupyterlab-variableInspector)
* [krassowski/jupyterlab-go-to-definition](https://github.com/krassowski/jupyterlab-go-to-definition)
* [jwkvam/jupyterlab-vim](https://github.com/jwkvam/jupyterlab-vim)

You can lauch jupyterlab directly from this docker image by, 

```
$ docker run -d --rm --name YOUR_DOCKER_CONTAINER_NAME --user YOUR_UID -v YOUR/WORK/DIRECTORY:/home/jovyan/work -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 hotsuyuki/datascience-notebook-jupyterlab start-notebook.sh --NotebookApp.password='sha1:a12ba2b2d531:e289ddd95a3b76680efccf12349fd54d21ef795b'
```

where `YOUR_UID` can be checked using `id` command.

```
$ id
uid=500(ec2-user) gid=500(ec2-user) groups=500(ec2-user),10(wheel),497(docker)
```

In this case, `YOUR_UID` is `500`.

The password for jupyterlab is "password".
(`sha1:a12ba2b2d531:e289ddd95a3b76680efccf12349fd54d21ef795b` is the hashed result of the word, "password" by sha1)
