docker compose -f docker-compose-local.yml build &&
echo "imagem buildada para execução" &&
docker stack rm strapi &&
echo "stack strapi removida" &&

sleep 2

echo "deploy stack strapi" &&
docker stack deploy -c docker-compose-local.yml strapi