docker build -t abhaytambe/react-webapp02-client:latest -t abhaytambe/react-webapp02-client:$SHA ./client
docker build -t abhaytambe/react-webapp02-server:latest -t abhaytambe/react-webapp02-server:$SHA ./server
docker build -t abhaytambe/react-webapp02-worker:latest -t abhaytambe/react-webapp02-worker:$SHA ./worker

docker push  abhaytambe/react-webapp02-client:latest 
docker push  abhaytambe/react-webapp02-server:latest 
docker push  abhaytambe/react-webapp02-worker:latest 

docker push  abhaytambe/react-webapp02-client:$SHA 
docker push  abhaytambe/react-webapp02-server:$SHA 
docker push  abhaytambe/react-webapp02-worker:$SHA 

kubectl apply -f ./k8s

kubectl set image deployment/webapp-api-server express-webapp02-api-server=abhaytambe/react-webapp02-server:$SHA
kubectl set image deployment/client-deployment client=abhaytambe/react-webapp02-client:$SHA
kubectl set image deployment/worker-deployment fib-worker-container=abhaytambe/react-webapp02-client:$SHA