echo 'set abc 123'
redis-cli --eval s1
echo ''

echo 'set hash(abc) 123'
redis-cli --eval s2
echo ''

echo 'hset key${n} hash(abc) 123'
echo 'config set hash-max-ziplist-entries 512'
redis-cli --eval s3
echo ''

echo 'hset key${n} hash(abc) 123'
echo 'config set hash-max-ziplist-entries 1024'
redis-cli --eval s4
echo ''
