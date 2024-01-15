#kubectl get deployments -n vpn -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n vpn; end;
#kubectl get statefulset -n vpn -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n vpn; end;

kubectl get deployments -n security -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n security --context teyvat; end;
kubectl get statefulset -n security -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n security --context teyvat; end;

kubectl get deployments -n monitoring -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n monitoring --context teyvat; end;
kubectl get statefulset -n monitoring -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n monitoring --context teyvat; end;

kubectl get deployments -n action-runner-system -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n action-runner-system --context teyvat; end;
kubectl get statefulset -n action-runner-system -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n action-runner-system --context teyvat; end;

kubectl get deployments -n default -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n default --context teyvat; end;
kubectl get statefulset -n default -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n default --context teyvat; end;

kubectl get deployments -n media -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n media --context teyvat; end;
kubectl get statefulset -n media -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n media --context teyvat; end;

kubectl get deployments -n downloads -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n downloads --context teyvat; end;
kubectl get statefulset -n downloads -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n downloads --context teyvat; end;
kubectl get daemonset -n downloads -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart daemonset $LINE -n downloads --context teyvat; end;


kubectl get deployments -n monitoring -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart deployment $LINE -n monitoring --context teyvat; end;
kubectl get statefulset -n monitoring -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart statefulset $LINE -n monitoring --context teyvat; end;
kubectl get daemonset -n monitoring -o custom-columns=NAME:.metadata.name --context teyvat|grep -iv NAME|while read LINE; kubectl rollout restart daemonset $LINE -n monitoring --context teyvat; end;