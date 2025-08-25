# 1.🧱 Source Code - Prerequisites & Build
Prepared the Node.js project for Docker containerization.
- Installed Node.js dependencies: npm 11.4.2, nvm 24.4.0
- Initialized project: npm init -y
- Edited package.json to add start script: "start": "node src/index.js"
- Installed required packages: express@4.19.2, mongoose@8.5.1, body-parser@1.20.2, nodemon@3.1.4
- Built Docker image and pushed to container registry

# 📁 Project Structure
- ~/Project-MongoDB/1.Color-api-2.0.0_Source-code

# 💻 Tools Required
- Node.js
- npm
- Docker


# 2.🧱 MongoDB StatefulSet Deployment & DB Initialization
Deployed MongoDB as a StatefulSet on Kubernetes using dynamic NFS provisioning.

- Used dynamic NFS StorageClass: nfs-client
- Optional NodePath storage: standard (pod must be scheduled on node with local path)
- Applied manifests in order:
- mongodb-root-creds.yaml
- mongodb-colordb-creds.yaml
- mongodb-init-colordb.yaml
- mongodb-Headless-svc.yaml
- mongodb-ss.yaml

# 📁 Project Structure
- Project-MongoDB+Express-App/2.MongoDB-SS

# 💻 Tools Required
- Kubernetes cluster
- NFS dynamic provisioner


# 3.🧱 Color API App - Deployment & Testing
Deployed the Color API application as a Kubernetes Deployment with NodePort service and tested API functionality.

- Applied deployment manifest: color-api-deployment.yaml
- Applied service manifest: color-svc.yaml (NodePort 30006)
- Tested API endpoints with Postman:
- GET /
- GET /api
- GET /api/color
- GET /api/color/primary
- Inserted primary color into DB: POST /api/color/primary { "value": "red" }
- Verified data: GET /api?colorKey=primary
- Inserted secondary color into DB: POST /api/color/secondary { "value": "orange" }
- Verified data: GET /api?colorKey=secondary

- Scaled deployment: color-api to 3 replicas
- Deployed traffic-generator and monitored logs
- Tested dynamic traffic: POST /api/color/primary { "value": "yellow" }
- Cleaned up traffic-generator

# 📁 Project Structure
- Project-MongoDB+Express-App/3.Color-API-Deployment

# 💻 Tools Required
- Kubernetes cluster
- Docker
- Postman