This repository demonstrates the creation of a MySQL Docker container by a GitHub Action. This includes:

* Database initialisation (creating a user, a database, populating the latter)
* Creating an attachable network that can be used by other pods in the Kubernetes environment to access the database without exposing it
* Build and upload the resulting image to ghcr.io