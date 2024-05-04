## Creat deployments
kubectl apply -f cprompt_deployment.yaml
kubectl exec -it cprompt-deployment-7b6794d5db-tj4sv -- /bin/bash


## Connect to Jupyter:
1- Run in pod:

```
jupyter notebook --ip='0.0.0.0' --allow-root
```
2- Run in local machine:
```
kubectl port-forward gpu-pod-example 8888:8888
```

3- Open in local machine's browser:

localhost:8888

4- Copy the token generated in pod after step 1.
5- Paste in the opened field.