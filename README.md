# OpenStack Heat Template for Openshift Cluster

## Requirements

- Docker runtime
- `Make`

## Execution steps 

Rename `env.list.dist` to `env.list` and enter your openstack credential.

```bash
# Build openstack client, only need to run once
make build

# Run into container 
make installer

# Create the stack
make create


# Delete stack
make delete
```

`openstack` and `heat` clients are also work in this container.
