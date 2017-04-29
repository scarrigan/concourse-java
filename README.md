# concourse
Testing out concourse with the goal of taking a spring boot application into a kube or swarm cluster

# Concourse 

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


