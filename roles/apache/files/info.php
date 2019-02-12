<?php
$connection = new MongoClient( "mongodb://172.17.0.3:27017" );

$collection = $connection->selectCollection('admin', 'twitterMessagesDocker');
if (!$collection) {
        echo 'not connected to collection';
        exit;
}
$cursor = $collection->find();
foreach ($cursor as $doc) {
    var_dump($doc);
}
