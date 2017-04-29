# concourse
Testing out concourse with the goal of taking a spring boot application into a kube or swarm cluster

# Concourse 

Download the fly app from concourse.io

### Start concourse lite

```bash
vagrant up
```

### Set concourse login 

```bash
fly -t ci login
```

### Run and test an individual task
```bash
fly -t ci execute -c ci/test-app.yml
```

```bash
fly -t ci set-pipeline -p greeter-pipeline -c ci/pipeline.yml --var "private-repo-key=$(cat ~/.ssh/id_rsa)"
```

```bash
fly -t ci unpause-pipeline -p greeter-pipeline
```

```bash
http://192.168.100.4:8080/teams/main/pipelines/greeter-pipeline
```