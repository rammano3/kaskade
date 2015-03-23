echo "Clearing CQM"
psql -U postgres -c  'TRUNCATE client, room, room_to_user, invitation, transfer;' cqm

echo "Clearing redis"
redis-cli flushall
