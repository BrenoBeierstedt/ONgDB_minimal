printf "##### Building project database image..."
docker build -t ongdb_minimal ./ONgDB

printf "###Build Done!"




printf "\n\n##### Copying composer..."
cp docker-compose.yml.sample docker-compose.yml

rm proxy.conf

echo "### Creating proxy.conf"
cat > proxy.conf <<EOL
server_tokens off;
client_max_body_size 200m;
EOL
echo " "

printf "\n\nAll done! Have a nice day!\n"