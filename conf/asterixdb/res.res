101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("182629966") ;
 

{
	"requestID": "9f953673-e447-4960-ac8a-3a432109373a",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "17.670514ms",
		"executionTime": "16.706117ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("22064594") AND user.id <= 
 int64("22064694") ;
 

{
	"requestID": "ac300cff-fd7f-4991-9a91-e7865d41530e",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "28.193543ms",
		"executionTime": "27.093293ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2006-06-23T11:52:27" )
AND user.user_since <= 
DATETIME(
 "2006-06-23T11:57:27" )
;
 

{
	"requestID": "cbb15b70-7ff7-4959-ae69-c61099752a71",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "57.499254ms",
		"executionTime": "54.258972ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

104
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2011-04-04T00:08:16" )
AND gbu.user_since <= 
DATETIME(
 "2011-04-04T00:13:16" )
;
 

{
	"requestID": "e0d0cd18-6c5b-4476-be52-c1e0b97372b9",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "64.416961ms",
		"executionTime": "63.504328ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

105
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2003-08-06T09:26:13" )
AND gbu.user_since <= 
DATETIME(
 "2003-08-06T09:31:13" )
;
 

{
	"requestID": "7edd71e9-1a85-4406-a3b2-1ceb55eede60",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "53.882577ms",
		"executionTime": "52.77461ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-09-26T10:36:23" )
AND cm.send_time <
DATETIME(
 "2003-09-26T10:41:23" );
 

{
	"requestID": "6c513e68-73e0-449e-88e3-45c1312c021b",
	"signature": {
		"*": "*"
	},
	"results": [ null
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "68.435274ms",
		"executionTime": "66.230471ms",
		"resultCount": 1,
		"resultSize": 5,
		"processedObjects": 0
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-09-10T20:33:39" )
AND cm.send_time <
DATETIME(
 "2000-09-10T20:38:39" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "bbfe2276-4bee-4e7b-b9ed-122694d7f061",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "58.004611ms",
		"executionTime": "57.09066ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2007-03-19T15:31:13" )
AND cm.send_time <
DATETIME(
 "2007-03-19T15:36:13" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "8299411c-f860-43a6-9d58-a917d9785c3f",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "63.081173ms",
		"executionTime": "62.189113ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 33.7451  68.5357 ,
 33.7551  68.5357 ,
 33.7551  68.54570000000001 ,
 33.7451  68.54570000000001 ,
 33.7451  68.5357 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "7d6d1ac9-378b-471f-92cd-fc0745b8354a",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "145.99185ms",
		"executionTime": "145.1348ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1010
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Lumia" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "454a41f3-79cf-4baa-9e91-2f02be9e4da8",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 1311, "user": { "screen_name": "QuiannaWyatt!778", "lang": "en", "friends_count": 185, "statuses_count": 347, "name": "Quianna Wyatt", "followers_count": 204 }, "sender_location": {"type":"Point","coordinates":[24.4891,74.014],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-06-19T20:37:30.000", "referred_topics": [ "Lumia", "resolution", "technology" ], "message_text": "Using Lumia today, a little bit dislike its resolution, it is really terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3885, "user": { "screen_name": "JannahScott*269", "lang": "en", "friends_count": 352, "statuses_count": 183, "name": "Jannah Scott", "followers_count": 413 }, "sender_location": {"type":"Point","coordinates":[45.4724,70.4459],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-07-12T01:47:07.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "electronics" ], "message_text": "Just received Lumia tonight, sort of dislike the microphone, it is just bad", "sentiment": 1 } }
, { "cm": { "chirpid": 4467, "user": { "screen_name": "MaximillianKeppel*859", "lang": "en", "friends_count": 112, "statuses_count": 389, "name": "Maximillian Keppel", "followers_count": 284 }, "sender_location": {"type":"Point","coordinates":[30.0894,92.7029],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-06-30T18:49:22.000", "referred_topics": [ "Lumia", "microphone", "technology", "device", "electronics" ], "message_text": "Checking Lumia this morning,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
, { "cm": { "chirpid": 2212, "user": { "screen_name": "JacobMonroe_75", "lang": "en", "friends_count": 170, "statuses_count": 320, "name": "Jacob Monroe", "followers_count": 282 }, "sender_location": {"type":"Point","coordinates":[46.2206,68.4032],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-04-04T09:04:20.000", "referred_topics": [ "Lumia", "resolution", "hardware" ], "message_text": "Checking Lumia today, sort of hate its resolution, it is just terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 1200, "user": { "screen_name": "GordonPainter#786", "lang": "en", "friends_count": 381, "statuses_count": 262, "name": "Gordon Painter", "followers_count": 564 }, "sender_location": {"type":"Point","coordinates":[45.168,79.3912],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-12-15T07:00:41.000", "referred_topics": [ "Lumia", "resolution", "technology", "electronics", "gadget", "device" ], "message_text": "Just got Lumia today, a little bit hate the resolution, it is just awful", "sentiment": 1 } }
, { "cm": { "chirpid": 3087, "user": { "screen_name": "HarrisonSchofield#748", "lang": "en", "friends_count": 353, "statuses_count": 58, "name": "Harrison Schofield", "followers_count": 351 }, "sender_location": {"type":"Point","coordinates":[40.608,67.846],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-04-26T06:46:46.000", "referred_topics": [ "Lumia", "resolution", "technology", "device", "electronics", "gadget" ], "message_text": "Checking Lumia today, quite hate the resolution, it is bad", "sentiment": 0 } }
, { "cm": { "chirpid": 1423, "user": { "screen_name": "RenatoClewett_851", "lang": "en", "friends_count": 220, "statuses_count": 209, "name": "Renato Clewett", "followers_count": 354 }, "sender_location": {"type":"Point","coordinates":[43.0489,83.4225],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-23T23:59:16.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "gadget", "hardware", "electronics" ], "message_text": "Checking Lumia this morning, extremely hate the microphone, it is really awful", "sentiment": 0 } }
, { "cm": { "chirpid": 614, "user": { "screen_name": "LouellaMcloskey_968", "lang": "en", "friends_count": 101, "statuses_count": 197, "name": "Louella Mcloskey", "followers_count": 277 }, "sender_location": {"type":"Point","coordinates":[35.5482,70.101],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-06T08:52:47.000", "referred_topics": [ "Lumia", "microphone", "electronics", "hardware", "gadget", "technology", "device" ], "message_text": "Just got Lumia this morning,  have no idea about its microphone, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 3797, "user": { "screen_name": "EddieStainforth*287", "lang": "en", "friends_count": 103, "statuses_count": 414, "name": "Eddie Stainforth", "followers_count": 261 }, "sender_location": {"type":"Point","coordinates":[27.3499,66.5961],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-02-27T02:01:05.000", "referred_topics": [ "Lumia", "resolution", "hardware", "gadget", "electronics" ], "message_text": "Just got Lumia this morning, a little bit dislike its resolution, it is bad", "sentiment": 1 } }
, { "cm": { "chirpid": 3532, "user": { "screen_name": "AlvenaRobertson#214", "lang": "en", "friends_count": 247, "statuses_count": 443, "name": "Alvena Robertson", "followers_count": 321 }, "sender_location": {"type":"Point","coordinates":[34.8366,70.5078],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2009-12-19T21:25:16.000", "referred_topics": [ "Lumia", "resolution", "gadget", "device" ], "message_text": "Just received Lumia today,  have no idea about its resolution, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "199.233226ms",
		"executionTime": "198.445342ms",
		"resultCount": 10,
		"resultSize": 5481,
		"processedObjects": 54
	}
}

1011
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where edit_distance_contains(cm.message_text, 
 "Lumia" ,1)[0] order by cm.send_time desc
limit 10
;
 

{
	"requestID": "898e76cb-797d-4bda-988f-76cf3fcb1c0b",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 1311, "user": { "screen_name": "QuiannaWyatt!778", "lang": "en", "friends_count": 185, "statuses_count": 347, "name": "Quianna Wyatt", "followers_count": 204 }, "sender_location": {"type":"Point","coordinates":[24.4891,74.014],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-06-19T20:37:30.000", "referred_topics": [ "Lumia", "resolution", "technology" ], "message_text": "Using Lumia today, a little bit dislike its resolution, it is really terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3885, "user": { "screen_name": "JannahScott*269", "lang": "en", "friends_count": 352, "statuses_count": 183, "name": "Jannah Scott", "followers_count": 413 }, "sender_location": {"type":"Point","coordinates":[45.4724,70.4459],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-07-12T01:47:07.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "electronics" ], "message_text": "Just received Lumia tonight, sort of dislike the microphone, it is just bad", "sentiment": 1 } }
, { "cm": { "chirpid": 4467, "user": { "screen_name": "MaximillianKeppel*859", "lang": "en", "friends_count": 112, "statuses_count": 389, "name": "Maximillian Keppel", "followers_count": 284 }, "sender_location": {"type":"Point","coordinates":[30.0894,92.7029],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-06-30T18:49:22.000", "referred_topics": [ "Lumia", "microphone", "technology", "device", "electronics" ], "message_text": "Checking Lumia this morning,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
, { "cm": { "chirpid": 2212, "user": { "screen_name": "JacobMonroe_75", "lang": "en", "friends_count": 170, "statuses_count": 320, "name": "Jacob Monroe", "followers_count": 282 }, "sender_location": {"type":"Point","coordinates":[46.2206,68.4032],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-04-04T09:04:20.000", "referred_topics": [ "Lumia", "resolution", "hardware" ], "message_text": "Checking Lumia today, sort of hate its resolution, it is just terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 1200, "user": { "screen_name": "GordonPainter#786", "lang": "en", "friends_count": 381, "statuses_count": 262, "name": "Gordon Painter", "followers_count": 564 }, "sender_location": {"type":"Point","coordinates":[45.168,79.3912],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-12-15T07:00:41.000", "referred_topics": [ "Lumia", "resolution", "technology", "electronics", "gadget", "device" ], "message_text": "Just got Lumia today, a little bit hate the resolution, it is just awful", "sentiment": 1 } }
, { "cm": { "chirpid": 3087, "user": { "screen_name": "HarrisonSchofield#748", "lang": "en", "friends_count": 353, "statuses_count": 58, "name": "Harrison Schofield", "followers_count": 351 }, "sender_location": {"type":"Point","coordinates":[40.608,67.846],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-04-26T06:46:46.000", "referred_topics": [ "Lumia", "resolution", "technology", "device", "electronics", "gadget" ], "message_text": "Checking Lumia today, quite hate the resolution, it is bad", "sentiment": 0 } }
, { "cm": { "chirpid": 1423, "user": { "screen_name": "RenatoClewett_851", "lang": "en", "friends_count": 220, "statuses_count": 209, "name": "Renato Clewett", "followers_count": 354 }, "sender_location": {"type":"Point","coordinates":[43.0489,83.4225],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-23T23:59:16.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "gadget", "hardware", "electronics" ], "message_text": "Checking Lumia this morning, extremely hate the microphone, it is really awful", "sentiment": 0 } }
, { "cm": { "chirpid": 614, "user": { "screen_name": "LouellaMcloskey_968", "lang": "en", "friends_count": 101, "statuses_count": 197, "name": "Louella Mcloskey", "followers_count": 277 }, "sender_location": {"type":"Point","coordinates":[35.5482,70.101],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-06T08:52:47.000", "referred_topics": [ "Lumia", "microphone", "electronics", "hardware", "gadget", "technology", "device" ], "message_text": "Just got Lumia this morning,  have no idea about its microphone, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 3797, "user": { "screen_name": "EddieStainforth*287", "lang": "en", "friends_count": 103, "statuses_count": 414, "name": "Eddie Stainforth", "followers_count": 261 }, "sender_location": {"type":"Point","coordinates":[27.3499,66.5961],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-02-27T02:01:05.000", "referred_topics": [ "Lumia", "resolution", "hardware", "gadget", "electronics" ], "message_text": "Just got Lumia this morning, a little bit dislike its resolution, it is bad", "sentiment": 1 } }
, { "cm": { "chirpid": 3532, "user": { "screen_name": "AlvenaRobertson#214", "lang": "en", "friends_count": 247, "statuses_count": 443, "name": "Alvena Robertson", "followers_count": 321 }, "sender_location": {"type":"Point","coordinates":[34.8366,70.5078],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2009-12-19T21:25:16.000", "referred_topics": [ "Lumia", "resolution", "gadget", "device" ], "message_text": "Just received Lumia today,  have no idea about its resolution, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "99.149789ms",
		"executionTime": "98.072068ms",
		"resultCount": 10,
		"resultSize": 5481,
		"processedObjects": 202
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-11-14T03:41:11" )
and
gbu.user_since <
DATETIME(
 "2007-11-14T03:46:11" )
and
gbm.send_time >=
DATETIME(
 "2007-06-28T00:33:18" )
and
gbm.send_time <
DATETIME(
 "2007-06-29T00:33:18" )
;
 

{
	"requestID": "4a2ae8b4-0009-4c11-ac27-9912de609bc4",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "65.065639ms",
		"executionTime": "63.630276ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2012-12-28T03:51:16" )
and gbm.send_time < 
DATETIME(
 "2012-12-28T03:56:16" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-10-10T17:26:42" )
and gbu.user_since <
DATETIME(
 "2013-10-11T17:26:42" )
;
 

{
	"requestID": "b0243e32-4726-4183-9b37-902ba87856cf",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "124.260174ms",
		"executionTime": "121.867191ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2004-05-23T06:35:45" )
AND user.user_since < 
DATETIME(
 "2004-05-23T06:40:45" )
AND msg.send_time >=
DATETIME(
 "2004-05-26T23:47:25" )
AND msg.send_time <
DATETIME(
 "2004-05-27T23:47:25" )
GROUP BY user.id;
;
 

{
	"requestID": "19880ee4-3624-4aa1-8aaf-c59167da74ee",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "91.242594ms",
		"executionTime": "88.671844ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2004-08-25T19:28:02" )
AND user.user_since < 
DATETIME(
 "2004-08-25T19:33:02" )
AND msg.send_time >=
DATETIME(
 "2006-02-16T15:44:11" )
AND msg.send_time <
DATETIME(
 "2006-02-17T15:44:11" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "b7a128d7-62b3-441e-8c8b-2885eb48aa62",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "102.318157ms",
		"executionTime": "100.41133ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */= gbu.id 
and
gbm.send_time >=
DATETIME(
 "2010-02-28T21:14:38" )
and
gbm.send_time <
DATETIME(
 "2010-02-28T21:19:38" )
and
gbu.user_since >= 
DATETIME(
 "2005-02-13T00:12:31" )
and
gbu.user_since <
DATETIME(
 "2005-02-14T00:12:31" )
;
 

{
	"requestID": "eb8e9946-2838-4c56-8b45-e28e5d84fb40",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "89.236966ms",
		"executionTime": "87.878059ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2008-03-05T11:56:47" )
and gbm.send_time < 
DATETIME(
 "2008-03-05T12:01:47" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-01-11T12:32:43" )
and gbu.user_since <
DATETIME(
 "2003-01-12T12:32:43" )
;
 

{
	"requestID": "48747b9c-4fea-493a-9015-0eeb1a8409f5",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.313345ms",
		"executionTime": "127.529052ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2013-05-02T04:42:16" )
AND msg.send_time <
DATETIME(
 "2013-05-02T04:47:16" )
AND user.user_since >= 
DATETIME(
 "2013-07-20T15:51:42" )
AND user.user_since < 
DATETIME(
 "2013-07-21T15:51:42" )
GROUP BY user.id;
;
 

{
	"requestID": "7b86467e-1bc2-4a48-bee0-6e551232dba7",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "116.748681ms",
		"executionTime": "114.319252ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2006-05-26T15:30:31" )
AND msg.send_time <
DATETIME(
 "2006-05-26T15:35:31" )
AND user.user_since >= 
DATETIME(
 "2006-06-02T08:12:27" )
AND user.user_since < 
DATETIME(
 "2006-06-03T08:12:27" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "1956c9a0-946e-4b14-b8b9-658d5a7f4d5a",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "127.706001ms",
		"executionTime": "125.600461ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1016
Ver 1
USE bigfun;
from ChirpMessages cm1
let ev = st_make_envelope(
st_x(cm1.sender_location)-
 0.01 , 
st_y(cm1.sender_location)-
 0.01 , 
st_x(cm1.sender_location)+
 0.01 , 
st_y(cm1.sender_location)+
 0.01 , 4326)
WHERE
cm1.send_time >DATETIME(
 "2003-02-27T00:53:36" )
AND
cm1.send_time <=DATETIME(
 "2003-02-27T00:58:36"  )
SELECT cm1,(select cm2
from ChirpMessages cm2 
where cm1.chirpid /*+ indexnl */!=cm2.chirpid and st_contains(ev, cm2.sender_location)order by cm2.sender_time limit 10 
)
;
 

{
	"requestID": "a084563b-7b5a-41ae-b919-8ee26d5648cc",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "326.650884ms",
		"executionTime": "319.225519ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 4813
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)= 
 int64("0") from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2012-06-27T01:03:57" )
AND cm.send_time <
DATETIME(
 "2012-06-27T01:08:57" )
;
 

{
	"requestID": "1a04801b-b58a-4f8d-8134-bda0acea3f5c",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "748.256788ms",
		"executionTime": "744.352754ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2002-03-03T05:23:45" )
AND cm.send_time <
DATETIME(
 "2002-03-03T05:28:45" )
group by sentiment(cm.message_text);
 

{
	"requestID": "3c7665ed-090c-474d-a4bc-58bb350cc0e6",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "648.888037ms",
		"executionTime": "647.848307ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("190706856") ;
 

{
	"requestID": "54d229e9-d534-47d7-99df-97518bb37ae8",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "36.037453ms",
		"executionTime": "34.842291ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("207887830") AND user.id <= 
 int64("207887930") ;
 

{
	"requestID": "a711a2e4-b152-4917-9355-c9237006e07f",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "67.988293ms",
		"executionTime": "66.354621ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2008-04-24T01:40:27" )
AND user.user_since <= 
DATETIME(
 "2008-04-24T01:45:27" )
;
 

{
	"requestID": "876834f8-f21c-470f-bc43-237f68a3c79b",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "52.352208ms",
		"executionTime": "50.898503ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

104
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2012-08-06T05:23:39" )
AND gbu.user_since <= 
DATETIME(
 "2012-08-06T05:28:39" )
;
 

{
	"requestID": "4f3bae20-d23f-4ffb-b055-2cec8a5afc7b",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "49.024232ms",
		"executionTime": "47.5408ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

105
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2002-07-21T08:42:01" )
AND gbu.user_since <= 
DATETIME(
 "2002-07-21T08:47:01" )
;
 

{
	"requestID": "c4abc5eb-3f52-451b-87a6-3778488f76ac",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "74.841012ms",
		"executionTime": "71.957977ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-02-12T12:29:48" )
AND cm.send_time <
DATETIME(
 "2000-02-12T12:34:48" );
 

{
	"requestID": "ece53ee4-4180-450f-a284-cab10b36fae8",
	"signature": {
		"*": "*"
	},
	"results": [ null
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "50.214721ms",
		"executionTime": "48.832472ms",
		"resultCount": 1,
		"resultSize": 5,
		"processedObjects": 0
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-09-07T16:54:19" )
AND cm.send_time <
DATETIME(
 "2003-09-07T16:59:19" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "18375505-9be4-42ba-ae9c-00668f3cfdf3",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "84.490208ms",
		"executionTime": "82.009013ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-12-21T10:49:33" )
AND cm.send_time <
DATETIME(
 "2001-12-21T10:54:33" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "505679a4-32db-436f-a820-939908ab77bf",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "65.084013ms",
		"executionTime": "63.412259ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 35.815  72.1825 ,
 35.824999999999996  72.1825 ,
 35.824999999999996  72.19250000000001 ,
 35.815  72.19250000000001 ,
 35.815  72.1825 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "a3ccd7cf-3ac7-4c10-bea9-312bdd411562",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "53.919478ms",
		"executionTime": "51.562991ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1010
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "XPeria" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "554f4348-501b-41b8-b7de-ecb148d83fa8",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 2526, "user": { "screen_name": "ValeryVeith#161", "lang": "en", "friends_count": 175, "statuses_count": 460, "name": "Valery Veith", "followers_count": 293 }, "sender_location": {"type":"Point","coordinates":[37.7963,73.5222],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-02-28T19:02:13.000", "referred_topics": [ "XPeria", "microphone", "technology", "electronics", "hardware" ], "message_text": "Just got XPeria this morning, really dislike its microphone, it is really terrible", "sentiment": 0 } }
, { "cm": { "chirpid": 2146, "user": { "screen_name": "CraigRosensteel*391", "lang": "en", "friends_count": 21, "statuses_count": 449, "name": "Craig Rosensteel", "followers_count": 65 }, "sender_location": {"type":"Point","coordinates":[46.3008,82.6543],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-01-19T14:23:07.000", "referred_topics": [ "XPeria", "resolution", "gadget" ], "message_text": "Just received XPeria today,  have no idea about its resolution, it is really okey", "sentiment": 2 } }
, { "cm": { "chirpid": 3116, "user": { "screen_name": "AminaHoffhants!851", "lang": "en", "friends_count": 248, "statuses_count": 309, "name": "Amina Hoffhants", "followers_count": 365 }, "sender_location": {"type":"Point","coordinates":[35.8655,68.2786],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-03-16T10:59:45.000", "referred_topics": [ "XPeria", "resolution", "electronics", "gadget", "hardware", "device" ], "message_text": "Playing with XPeria today, quite love its resolution, it is just awesome", "sentiment": 4 } }
, { "cm": { "chirpid": 4344, "user": { "screen_name": "BlanchGiesen!19", "lang": "en", "friends_count": 125, "statuses_count": 151, "name": "Blanch Giesen", "followers_count": 259 }, "sender_location": {"type":"Point","coordinates":[28.787899,80.2044],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-01-02T08:27:16.000", "referred_topics": [ "XPeria", "microphone", "device", "electronics" ], "message_text": "Checking XPeria today, quite like the microphone, it is really amazing", "sentiment": 4 } }
, { "cm": { "chirpid": 1686, "user": { "screen_name": "PeggieBlessig_547", "lang": "en", "friends_count": 11, "statuses_count": 50, "name": "Peggie Blessig", "followers_count": 7 }, "sender_location": {"type":"Point","coordinates":[45.886,83.1154],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-08-26T12:41:12.000", "referred_topics": [ "XPeria", "microphone", "electronics", "hardware", "device", "gadget" ], "message_text": "Just received XPeria tonight, sort of hate the microphone, it is terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3819, "user": { "screen_name": "AgustinMitchell#637", "lang": "en", "friends_count": 228, "statuses_count": 3, "name": "Agustin Mitchell", "followers_count": 416 }, "sender_location": {"type":"Point","coordinates":[36.1096,96.5697],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-07-08T23:03:55.000", "referred_topics": [ "XPeria", "resolution", "hardware" ], "message_text": "Just got XPeria this morning, quite hate the resolution, it is awful", "sentiment": 0 } }
, { "cm": { "chirpid": 3230, "user": { "screen_name": "TammyHenderson!255", "lang": "en", "friends_count": 287, "statuses_count": 313, "name": "Tammy Henderson", "followers_count": 389 }, "sender_location": {"type":"Point","coordinates":[46.1176,89.9612],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-05-20T06:37:51.000", "referred_topics": [ "XPeria", "microphone", "electronics", "device", "hardware", "gadget" ], "message_text": "Playing with XPeria tonight, sort of dislike its microphone, it is awful", "sentiment": 1 } }
, { "cm": { "chirpid": 2116, "user": { "screen_name": "AlyssaJohann*699", "lang": "en", "friends_count": 40, "statuses_count": 251, "name": "Alyssa Johann", "followers_count": 210 }, "sender_location": {"type":"Point","coordinates":[33.6708,80.6835],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-08-01T05:14:12.000", "referred_topics": [ "XPeria", "microphone", "technology", "gadget", "electronics", "device", "hardware" ], "message_text": "Just received XPeria tonight,  have no idea about the microphone, it is just okey", "sentiment": 2 } }
, { "cm": { "chirpid": 2380, "user": { "screen_name": "KyleeMingle*46", "lang": "en", "friends_count": 237, "statuses_count": 120, "name": "Kylee Mingle", "followers_count": 390 }, "sender_location": {"type":"Point","coordinates":[43.6995,68.5837],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-05-01T16:23:30.000", "referred_topics": [ "XPeria", "resolution", "technology", "electronics", "gadget", "hardware" ], "message_text": "Playing with XPeria today,  have no idea about the resolution, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 4696, "user": { "screen_name": "GwendolinePatterson!273", "lang": "en", "friends_count": 308, "statuses_count": 110, "name": "Gwendoline Patterson", "followers_count": 381 }, "sender_location": {"type":"Point","coordinates":[34.4781,70.1684],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-10-05T17:09:59.000", "referred_topics": [ "XPeria", "microphone", "gadget", "device" ], "message_text": "Just got XPeria tonight,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "88.573239ms",
		"executionTime": "86.967572ms",
		"resultCount": 10,
		"resultSize": 5472,
		"processedObjects": 84
	}
}

1011
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where edit_distance_contains(cm.message_text, 
 "XPeria" ,1)[0] order by cm.send_time desc
limit 10
;
 

{
	"requestID": "2d36b570-9cad-42c6-95de-6e5727af88ed",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 2526, "user": { "screen_name": "ValeryVeith#161", "lang": "en", "friends_count": 175, "statuses_count": 460, "name": "Valery Veith", "followers_count": 293 }, "sender_location": {"type":"Point","coordinates":[37.7963,73.5222],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-02-28T19:02:13.000", "referred_topics": [ "XPeria", "microphone", "technology", "electronics", "hardware" ], "message_text": "Just got XPeria this morning, really dislike its microphone, it is really terrible", "sentiment": 0 } }
, { "cm": { "chirpid": 2146, "user": { "screen_name": "CraigRosensteel*391", "lang": "en", "friends_count": 21, "statuses_count": 449, "name": "Craig Rosensteel", "followers_count": 65 }, "sender_location": {"type":"Point","coordinates":[46.3008,82.6543],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-01-19T14:23:07.000", "referred_topics": [ "XPeria", "resolution", "gadget" ], "message_text": "Just received XPeria today,  have no idea about its resolution, it is really okey", "sentiment": 2 } }
, { "cm": { "chirpid": 3116, "user": { "screen_name": "AminaHoffhants!851", "lang": "en", "friends_count": 248, "statuses_count": 309, "name": "Amina Hoffhants", "followers_count": 365 }, "sender_location": {"type":"Point","coordinates":[35.8655,68.2786],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-03-16T10:59:45.000", "referred_topics": [ "XPeria", "resolution", "electronics", "gadget", "hardware", "device" ], "message_text": "Playing with XPeria today, quite love its resolution, it is just awesome", "sentiment": 4 } }
, { "cm": { "chirpid": 4344, "user": { "screen_name": "BlanchGiesen!19", "lang": "en", "friends_count": 125, "statuses_count": 151, "name": "Blanch Giesen", "followers_count": 259 }, "sender_location": {"type":"Point","coordinates":[28.787899,80.2044],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-01-02T08:27:16.000", "referred_topics": [ "XPeria", "microphone", "device", "electronics" ], "message_text": "Checking XPeria today, quite like the microphone, it is really amazing", "sentiment": 4 } }
, { "cm": { "chirpid": 1686, "user": { "screen_name": "PeggieBlessig_547", "lang": "en", "friends_count": 11, "statuses_count": 50, "name": "Peggie Blessig", "followers_count": 7 }, "sender_location": {"type":"Point","coordinates":[45.886,83.1154],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-08-26T12:41:12.000", "referred_topics": [ "XPeria", "microphone", "electronics", "hardware", "device", "gadget" ], "message_text": "Just received XPeria tonight, sort of hate the microphone, it is terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3819, "user": { "screen_name": "AgustinMitchell#637", "lang": "en", "friends_count": 228, "statuses_count": 3, "name": "Agustin Mitchell", "followers_count": 416 }, "sender_location": {"type":"Point","coordinates":[36.1096,96.5697],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-07-08T23:03:55.000", "referred_topics": [ "XPeria", "resolution", "hardware" ], "message_text": "Just got XPeria this morning, quite hate the resolution, it is awful", "sentiment": 0 } }
, { "cm": { "chirpid": 3230, "user": { "screen_name": "TammyHenderson!255", "lang": "en", "friends_count": 287, "statuses_count": 313, "name": "Tammy Henderson", "followers_count": 389 }, "sender_location": {"type":"Point","coordinates":[46.1176,89.9612],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-05-20T06:37:51.000", "referred_topics": [ "XPeria", "microphone", "electronics", "device", "hardware", "gadget" ], "message_text": "Playing with XPeria tonight, sort of dislike its microphone, it is awful", "sentiment": 1 } }
, { "cm": { "chirpid": 2116, "user": { "screen_name": "AlyssaJohann*699", "lang": "en", "friends_count": 40, "statuses_count": 251, "name": "Alyssa Johann", "followers_count": 210 }, "sender_location": {"type":"Point","coordinates":[33.6708,80.6835],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-08-01T05:14:12.000", "referred_topics": [ "XPeria", "microphone", "technology", "gadget", "electronics", "device", "hardware" ], "message_text": "Just received XPeria tonight,  have no idea about the microphone, it is just okey", "sentiment": 2 } }
, { "cm": { "chirpid": 2380, "user": { "screen_name": "KyleeMingle*46", "lang": "en", "friends_count": 237, "statuses_count": 120, "name": "Kylee Mingle", "followers_count": 390 }, "sender_location": {"type":"Point","coordinates":[43.6995,68.5837],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-05-01T16:23:30.000", "referred_topics": [ "XPeria", "resolution", "technology", "electronics", "gadget", "hardware" ], "message_text": "Playing with XPeria today,  have no idea about the resolution, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 4696, "user": { "screen_name": "GwendolinePatterson!273", "lang": "en", "friends_count": 308, "statuses_count": 110, "name": "Gwendoline Patterson", "followers_count": 381 }, "sender_location": {"type":"Point","coordinates":[34.4781,70.1684],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-10-05T17:09:59.000", "referred_topics": [ "XPeria", "microphone", "gadget", "device" ], "message_text": "Just got XPeria tonight,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "121.391189ms",
		"executionTime": "119.769304ms",
		"resultCount": 10,
		"resultSize": 5472,
		"processedObjects": 660
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2014-08-13T11:15:27" )
and
gbu.user_since <
DATETIME(
 "2014-08-13T11:20:27" )
and
gbm.send_time >=
DATETIME(
 "2004-01-04T18:08:55" )
and
gbm.send_time <
DATETIME(
 "2004-01-05T18:08:55" )
;
 

{
	"requestID": "2bf764eb-95e6-43f4-8e24-3eb7e676b401",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "64.933808ms",
		"executionTime": "62.928254ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-11-15T02:08:43" )
and gbm.send_time < 
DATETIME(
 "2004-11-15T02:13:43" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2002-08-05T20:44:00" )
and gbu.user_since <
DATETIME(
 "2002-08-06T20:44:00" )
;
 

{
	"requestID": "fbc57c92-5f08-495f-b59c-b5cc6f113380",
	"signature": {
		"*": "*"
	},
	"results": [ { "name": "Howard Ashbaugh", "messages": [  ] }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "69.009757ms",
		"executionTime": "67.642105ms",
		"resultCount": 1,
		"resultSize": 48,
		"processedObjects": 2580
	}
}

1014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2002-06-25T17:38:09" )
AND user.user_since < 
DATETIME(
 "2002-06-25T17:43:09" )
AND msg.send_time >=
DATETIME(
 "2007-08-14T04:09:28" )
AND msg.send_time <
DATETIME(
 "2007-08-15T04:09:28" )
GROUP BY user.id;
;
 

{
	"requestID": "650f326d-e88d-4ccf-8476-0495d35639f9",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "83.814643ms",
		"executionTime": "82.150372ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2003-01-27T22:21:24" )
AND user.user_since < 
DATETIME(
 "2003-01-27T22:26:24" )
AND msg.send_time >=
DATETIME(
 "2005-04-13T02:16:05" )
AND msg.send_time <
DATETIME(
 "2005-04-14T02:16:05" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "58d71c66-51fc-4e8a-8839-5220af7e12a8",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "67.964853ms",
		"executionTime": "66.030099ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */= gbu.id 
and
gbm.send_time >=
DATETIME(
 "2010-06-17T01:19:22" )
and
gbm.send_time <
DATETIME(
 "2010-06-17T01:24:22" )
and
gbu.user_since >= 
DATETIME(
 "2008-12-21T06:55:50" )
and
gbu.user_since <
DATETIME(
 "2008-12-22T06:55:50" )
;
 

{
	"requestID": "ae5fbc78-9364-4e26-987c-d8497e4c7b36",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "45.422138ms",
		"executionTime": "44.497571ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2011-11-14T09:52:28" )
and gbm.send_time < 
DATETIME(
 "2011-11-14T09:57:28" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-05-07T01:18:26" )
and gbu.user_since <
DATETIME(
 "2013-05-08T01:18:26" )
;
 

{
	"requestID": "5c8a0214-dfe2-4441-b8a7-cb5f8a08606c",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "70.682128ms",
		"executionTime": "69.556664ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2005-10-02T04:48:05" )
AND msg.send_time <
DATETIME(
 "2005-10-02T04:53:05" )
AND user.user_since >= 
DATETIME(
 "2011-08-20T09:04:19" )
AND user.user_since < 
DATETIME(
 "2011-08-21T09:04:19" )
GROUP BY user.id;
;
 

{
	"requestID": "d055a6d7-f63e-4db5-816d-ed0e67e25da3",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "150.507257ms",
		"executionTime": "147.944864ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2011-12-14T21:35:51" )
AND msg.send_time <
DATETIME(
 "2011-12-14T21:40:51" )
AND user.user_since >= 
DATETIME(
 "2009-01-25T22:21:27" )
AND user.user_since < 
DATETIME(
 "2009-01-26T22:21:27" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "27d841e1-0991-4763-a714-5fc9de8b43f3",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "132.037596ms",
		"executionTime": "128.501808ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1016
Ver 1
USE bigfun;
from ChirpMessages cm1
let ev = st_make_envelope(
st_x(cm1.sender_location)-
 0.01 , 
st_y(cm1.sender_location)-
 0.01 , 
st_x(cm1.sender_location)+
 0.01 , 
st_y(cm1.sender_location)+
 0.01 , 4326)
WHERE
cm1.send_time >DATETIME(
 "2010-01-16T00:20:50" )
AND
cm1.send_time <=DATETIME(
 "2010-01-16T00:25:50"  )
SELECT cm1,(select cm2
from ChirpMessages cm2 
where cm1.chirpid /*+ indexnl */!=cm2.chirpid and st_contains(ev, cm2.sender_location)order by cm2.sender_time limit 10 
)
;
 

{
	"requestID": "d51fe0d0-e8bf-4876-ae53-ab6b7c7183ff",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "111.195441ms",
		"executionTime": "108.312911ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 4813
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)= 
 int64("3") from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-10-14T08:46:42" )
AND cm.send_time <
DATETIME(
 "2009-10-14T08:51:42" )
;
 

{
	"requestID": "0221b9ad-ab56-4e63-8718-c5189b794d90",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "693.658938ms",
		"executionTime": "689.443436ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2011-11-04T08:14:32" )
AND cm.send_time <
DATETIME(
 "2011-11-04T08:19:32" )
group by sentiment(cm.message_text);
 

{
	"requestID": "fb846839-bc58-4741-83b7-df6865c48e60",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "473.398997ms",
		"executionTime": "472.706342ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("248415047") ;
 

{
	"requestID": "8219c113-be68-4409-aa8e-8beb3a82872f",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "30.239637ms",
		"executionTime": "29.208618ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("165054078") AND user.id <= 
 int64("165054178") ;
 

{
	"requestID": "f8917417-7c88-46b9-a179-122f5c7317bb",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "33.433464ms",
		"executionTime": "30.478304ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2007-09-21T20:53:26" )
AND user.user_since <= 
DATETIME(
 "2007-09-21T20:58:26" )
;
 

{
	"requestID": "75dc2ac2-0fb7-4723-b644-a74be45ee587",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.627377ms",
		"executionTime": "39.361353ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

104
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2006-04-17T04:09:07" )
AND gbu.user_since <= 
DATETIME(
 "2006-04-17T04:14:07" )
;
 

{
	"requestID": "d5a7bdf7-ff58-4034-8f17-dcc7b4d9de2d",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "64.42392ms",
		"executionTime": "61.787492ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

105
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2000-09-27T15:31:18" )
AND gbu.user_since <= 
DATETIME(
 "2000-09-27T15:36:18" )
;
 

{
	"requestID": "416673f0-f56b-4459-9266-a890685e41ce",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "45.562504ms",
		"executionTime": "42.961542ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-02-11T03:17:34" )
AND cm.send_time <
DATETIME(
 "2003-02-11T03:22:34" );
 

{
	"requestID": "8ab8905a-c0f4-4e02-8036-7eae4c2133f3",
	"signature": {
		"*": "*"
	},
	"results": [ null
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.401846ms",
		"executionTime": "57.995317ms",
		"resultCount": 1,
		"resultSize": 5,
		"processedObjects": 0
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2008-11-28T02:50:43" )
AND cm.send_time <
DATETIME(
 "2008-11-28T02:55:43" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "227a19fe-b966-4ab6-9762-c62c066c50e0",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "47.253885ms",
		"executionTime": "45.722427ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2014-01-17T18:49:10" )
AND cm.send_time <
DATETIME(
 "2014-01-17T18:54:10" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "1cca606c-5fa0-4c97-bbfe-91af73a3b470",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.969206ms",
		"executionTime": "42.227495ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 27.6752  85.2199 ,
 27.685200000000002  85.2199 ,
 27.685200000000002  85.2299 ,
 27.6752  85.2299 ,
 27.6752  85.2199 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "5f4314a8-6a65-4bbe-b05a-8923ef727d2a",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "47.317664ms",
		"executionTime": "45.807635ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1010
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "XPeria" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "905ad38f-9925-4e9e-9f8c-da34ee9cac35",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 2526, "user": { "screen_name": "ValeryVeith#161", "lang": "en", "friends_count": 175, "statuses_count": 460, "name": "Valery Veith", "followers_count": 293 }, "sender_location": {"type":"Point","coordinates":[37.7963,73.5222],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-02-28T19:02:13.000", "referred_topics": [ "XPeria", "microphone", "technology", "electronics", "hardware" ], "message_text": "Just got XPeria this morning, really dislike its microphone, it is really terrible", "sentiment": 0 } }
, { "cm": { "chirpid": 2146, "user": { "screen_name": "CraigRosensteel*391", "lang": "en", "friends_count": 21, "statuses_count": 449, "name": "Craig Rosensteel", "followers_count": 65 }, "sender_location": {"type":"Point","coordinates":[46.3008,82.6543],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-01-19T14:23:07.000", "referred_topics": [ "XPeria", "resolution", "gadget" ], "message_text": "Just received XPeria today,  have no idea about its resolution, it is really okey", "sentiment": 2 } }
, { "cm": { "chirpid": 3116, "user": { "screen_name": "AminaHoffhants!851", "lang": "en", "friends_count": 248, "statuses_count": 309, "name": "Amina Hoffhants", "followers_count": 365 }, "sender_location": {"type":"Point","coordinates":[35.8655,68.2786],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-03-16T10:59:45.000", "referred_topics": [ "XPeria", "resolution", "electronics", "gadget", "hardware", "device" ], "message_text": "Playing with XPeria today, quite love its resolution, it is just awesome", "sentiment": 4 } }
, { "cm": { "chirpid": 4344, "user": { "screen_name": "BlanchGiesen!19", "lang": "en", "friends_count": 125, "statuses_count": 151, "name": "Blanch Giesen", "followers_count": 259 }, "sender_location": {"type":"Point","coordinates":[28.787899,80.2044],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-01-02T08:27:16.000", "referred_topics": [ "XPeria", "microphone", "device", "electronics" ], "message_text": "Checking XPeria today, quite like the microphone, it is really amazing", "sentiment": 4 } }
, { "cm": { "chirpid": 1686, "user": { "screen_name": "PeggieBlessig_547", "lang": "en", "friends_count": 11, "statuses_count": 50, "name": "Peggie Blessig", "followers_count": 7 }, "sender_location": {"type":"Point","coordinates":[45.886,83.1154],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-08-26T12:41:12.000", "referred_topics": [ "XPeria", "microphone", "electronics", "hardware", "device", "gadget" ], "message_text": "Just received XPeria tonight, sort of hate the microphone, it is terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3819, "user": { "screen_name": "AgustinMitchell#637", "lang": "en", "friends_count": 228, "statuses_count": 3, "name": "Agustin Mitchell", "followers_count": 416 }, "sender_location": {"type":"Point","coordinates":[36.1096,96.5697],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-07-08T23:03:55.000", "referred_topics": [ "XPeria", "resolution", "hardware" ], "message_text": "Just got XPeria this morning, quite hate the resolution, it is awful", "sentiment": 0 } }
, { "cm": { "chirpid": 3230, "user": { "screen_name": "TammyHenderson!255", "lang": "en", "friends_count": 287, "statuses_count": 313, "name": "Tammy Henderson", "followers_count": 389 }, "sender_location": {"type":"Point","coordinates":[46.1176,89.9612],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-05-20T06:37:51.000", "referred_topics": [ "XPeria", "microphone", "electronics", "device", "hardware", "gadget" ], "message_text": "Playing with XPeria tonight, sort of dislike its microphone, it is awful", "sentiment": 1 } }
, { "cm": { "chirpid": 2116, "user": { "screen_name": "AlyssaJohann*699", "lang": "en", "friends_count": 40, "statuses_count": 251, "name": "Alyssa Johann", "followers_count": 210 }, "sender_location": {"type":"Point","coordinates":[33.6708,80.6835],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-08-01T05:14:12.000", "referred_topics": [ "XPeria", "microphone", "technology", "gadget", "electronics", "device", "hardware" ], "message_text": "Just received XPeria tonight,  have no idea about the microphone, it is just okey", "sentiment": 2 } }
, { "cm": { "chirpid": 2380, "user": { "screen_name": "KyleeMingle*46", "lang": "en", "friends_count": 237, "statuses_count": 120, "name": "Kylee Mingle", "followers_count": 390 }, "sender_location": {"type":"Point","coordinates":[43.6995,68.5837],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-05-01T16:23:30.000", "referred_topics": [ "XPeria", "resolution", "technology", "electronics", "gadget", "hardware" ], "message_text": "Playing with XPeria today,  have no idea about the resolution, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 4696, "user": { "screen_name": "GwendolinePatterson!273", "lang": "en", "friends_count": 308, "statuses_count": 110, "name": "Gwendoline Patterson", "followers_count": 381 }, "sender_location": {"type":"Point","coordinates":[34.4781,70.1684],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-10-05T17:09:59.000", "referred_topics": [ "XPeria", "microphone", "gadget", "device" ], "message_text": "Just got XPeria tonight,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "76.783877ms",
		"executionTime": "73.753278ms",
		"resultCount": 10,
		"resultSize": 5472,
		"processedObjects": 84
	}
}

1011
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where edit_distance_contains(cm.message_text, 
 "Lumia" ,1)[0] order by cm.send_time desc
limit 10
;
 

{
	"requestID": "b2b3cdff-8e03-40fa-b1e7-5066438eec9b",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 1311, "user": { "screen_name": "QuiannaWyatt!778", "lang": "en", "friends_count": 185, "statuses_count": 347, "name": "Quianna Wyatt", "followers_count": 204 }, "sender_location": {"type":"Point","coordinates":[24.4891,74.014],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-06-19T20:37:30.000", "referred_topics": [ "Lumia", "resolution", "technology" ], "message_text": "Using Lumia today, a little bit dislike its resolution, it is really terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3885, "user": { "screen_name": "JannahScott*269", "lang": "en", "friends_count": 352, "statuses_count": 183, "name": "Jannah Scott", "followers_count": 413 }, "sender_location": {"type":"Point","coordinates":[45.4724,70.4459],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-07-12T01:47:07.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "electronics" ], "message_text": "Just received Lumia tonight, sort of dislike the microphone, it is just bad", "sentiment": 1 } }
, { "cm": { "chirpid": 4467, "user": { "screen_name": "MaximillianKeppel*859", "lang": "en", "friends_count": 112, "statuses_count": 389, "name": "Maximillian Keppel", "followers_count": 284 }, "sender_location": {"type":"Point","coordinates":[30.0894,92.7029],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-06-30T18:49:22.000", "referred_topics": [ "Lumia", "microphone", "technology", "device", "electronics" ], "message_text": "Checking Lumia this morning,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
, { "cm": { "chirpid": 2212, "user": { "screen_name": "JacobMonroe_75", "lang": "en", "friends_count": 170, "statuses_count": 320, "name": "Jacob Monroe", "followers_count": 282 }, "sender_location": {"type":"Point","coordinates":[46.2206,68.4032],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-04-04T09:04:20.000", "referred_topics": [ "Lumia", "resolution", "hardware" ], "message_text": "Checking Lumia today, sort of hate its resolution, it is just terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 1200, "user": { "screen_name": "GordonPainter#786", "lang": "en", "friends_count": 381, "statuses_count": 262, "name": "Gordon Painter", "followers_count": 564 }, "sender_location": {"type":"Point","coordinates":[45.168,79.3912],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-12-15T07:00:41.000", "referred_topics": [ "Lumia", "resolution", "technology", "electronics", "gadget", "device" ], "message_text": "Just got Lumia today, a little bit hate the resolution, it is just awful", "sentiment": 1 } }
, { "cm": { "chirpid": 3087, "user": { "screen_name": "HarrisonSchofield#748", "lang": "en", "friends_count": 353, "statuses_count": 58, "name": "Harrison Schofield", "followers_count": 351 }, "sender_location": {"type":"Point","coordinates":[40.608,67.846],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-04-26T06:46:46.000", "referred_topics": [ "Lumia", "resolution", "technology", "device", "electronics", "gadget" ], "message_text": "Checking Lumia today, quite hate the resolution, it is bad", "sentiment": 0 } }
, { "cm": { "chirpid": 1423, "user": { "screen_name": "RenatoClewett_851", "lang": "en", "friends_count": 220, "statuses_count": 209, "name": "Renato Clewett", "followers_count": 354 }, "sender_location": {"type":"Point","coordinates":[43.0489,83.4225],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-23T23:59:16.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "gadget", "hardware", "electronics" ], "message_text": "Checking Lumia this morning, extremely hate the microphone, it is really awful", "sentiment": 0 } }
, { "cm": { "chirpid": 614, "user": { "screen_name": "LouellaMcloskey_968", "lang": "en", "friends_count": 101, "statuses_count": 197, "name": "Louella Mcloskey", "followers_count": 277 }, "sender_location": {"type":"Point","coordinates":[35.5482,70.101],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-06T08:52:47.000", "referred_topics": [ "Lumia", "microphone", "electronics", "hardware", "gadget", "technology", "device" ], "message_text": "Just got Lumia this morning,  have no idea about its microphone, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 3797, "user": { "screen_name": "EddieStainforth*287", "lang": "en", "friends_count": 103, "statuses_count": 414, "name": "Eddie Stainforth", "followers_count": 261 }, "sender_location": {"type":"Point","coordinates":[27.3499,66.5961],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-02-27T02:01:05.000", "referred_topics": [ "Lumia", "resolution", "hardware", "gadget", "electronics" ], "message_text": "Just got Lumia this morning, a little bit dislike its resolution, it is bad", "sentiment": 1 } }
, { "cm": { "chirpid": 3532, "user": { "screen_name": "AlvenaRobertson#214", "lang": "en", "friends_count": 247, "statuses_count": 443, "name": "Alvena Robertson", "followers_count": 321 }, "sender_location": {"type":"Point","coordinates":[34.8366,70.5078],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2009-12-19T21:25:16.000", "referred_topics": [ "Lumia", "resolution", "gadget", "device" ], "message_text": "Just received Lumia today,  have no idea about its resolution, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "104.0429ms",
		"executionTime": "102.89285ms",
		"resultCount": 10,
		"resultSize": 5481,
		"processedObjects": 202
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-05-05T18:51:05" )
and
gbu.user_since <
DATETIME(
 "2008-05-05T18:56:05" )
and
gbm.send_time >=
DATETIME(
 "2000-06-05T20:02:14" )
and
gbm.send_time <
DATETIME(
 "2000-06-06T20:02:14" )
;
 

{
	"requestID": "1f679743-a797-4720-a30b-d3c954156d8a",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "31.176516ms",
		"executionTime": "30.318813ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2005-08-24T11:07:16" )
and gbm.send_time < 
DATETIME(
 "2005-08-24T11:12:16" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2006-10-21T21:11:39" )
and gbu.user_since <
DATETIME(
 "2006-10-22T21:11:39" )
;
 

{
	"requestID": "6d8cc78f-eeb3-4da4-8ea0-0871124755f5",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "66.59469ms",
		"executionTime": "65.276578ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2006-09-04T22:08:15" )
AND user.user_since < 
DATETIME(
 "2006-09-04T22:13:15" )
AND msg.send_time >=
DATETIME(
 "2012-01-27T00:42:00" )
AND msg.send_time <
DATETIME(
 "2012-01-28T00:42:00" )
GROUP BY user.id;
;
 

{
	"requestID": "ed2858ed-0bff-4dba-bab5-11f4d6433034",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "72.344299ms",
		"executionTime": "70.851697ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2000-11-04T05:05:41" )
AND user.user_since < 
DATETIME(
 "2000-11-04T05:10:41" )
AND msg.send_time >=
DATETIME(
 "2007-09-01T17:43:30" )
AND msg.send_time <
DATETIME(
 "2007-09-02T17:43:30" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "786b66a7-2ff1-4d4a-b8d8-2aa6b1822fdf",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "61.044031ms",
		"executionTime": "59.830365ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */= gbu.id 
and
gbm.send_time >=
DATETIME(
 "2005-08-16T18:57:52" )
and
gbm.send_time <
DATETIME(
 "2005-08-16T19:02:52" )
and
gbu.user_since >= 
DATETIME(
 "2007-06-12T13:01:45" )
and
gbu.user_since <
DATETIME(
 "2007-06-13T13:01:45" )
;
 

{
	"requestID": "623e6187-00fe-49b0-bfa0-d824d62c6738",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "46.590346ms",
		"executionTime": "45.390682ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2006-06-20T12:21:50" )
and gbm.send_time < 
DATETIME(
 "2006-06-20T12:26:50" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2007-01-11T02:47:54" )
and gbu.user_since <
DATETIME(
 "2007-01-12T02:47:54" )
;
 

{
	"requestID": "b3d35b5b-876c-48de-adb2-aec99bd33585",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "56.719799ms",
		"executionTime": "55.610279ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2005-07-10T13:00:20" )
AND msg.send_time <
DATETIME(
 "2005-07-10T13:05:20" )
AND user.user_since >= 
DATETIME(
 "2014-05-19T12:24:40" )
AND user.user_since < 
DATETIME(
 "2014-05-20T12:24:40" )
GROUP BY user.id;
;
 

{
	"requestID": "5b82a34d-c891-486e-93f7-d36b9879e937",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "57.855468ms",
		"executionTime": "55.649425ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2000-12-22T16:04:07" )
AND msg.send_time <
DATETIME(
 "2000-12-22T16:09:07" )
AND user.user_since >= 
DATETIME(
 "2004-01-27T03:41:33" )
AND user.user_since < 
DATETIME(
 "2004-01-28T03:41:33" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "25caf871-5c29-4584-976c-7c3e178ec7f3",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.978055ms",
		"executionTime": "60.108313ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1016
Ver 1
USE bigfun;
from ChirpMessages cm1
let ev = st_make_envelope(
st_x(cm1.sender_location)-
 0.01 , 
st_y(cm1.sender_location)-
 0.01 , 
st_x(cm1.sender_location)+
 0.01 , 
st_y(cm1.sender_location)+
 0.01 , 4326)
WHERE
cm1.send_time >DATETIME(
 "2009-04-23T07:43:16" )
AND
cm1.send_time <=DATETIME(
 "2009-04-23T07:48:16"  )
SELECT cm1,(select cm2
from ChirpMessages cm2 
where cm1.chirpid /*+ indexnl */!=cm2.chirpid and st_contains(ev, cm2.sender_location)order by cm2.sender_time limit 10 
)
;
 

{
	"requestID": "1be2fbe6-3889-4dd9-b111-88494d986094",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "99.291601ms",
		"executionTime": "98.177487ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 4813
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)= 
 int64("1") from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2014-02-18T00:20:11" )
AND cm.send_time <
DATETIME(
 "2014-02-18T00:25:11" )
;
 

{
	"requestID": "e3134f28-7e3f-47b2-a28f-a12415222ebe",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "441.710661ms",
		"executionTime": "440.891186ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2013-08-19T22:20:49" )
AND cm.send_time <
DATETIME(
 "2013-08-19T22:25:49" )
group by sentiment(cm.message_text);
 

{
	"requestID": "5cff035b-8f83-48b2-9007-478b592e5e5e",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "455.081295ms",
		"executionTime": "454.395947ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("187900541") ;
 

{
	"requestID": "b4750de0-397f-4b34-b9a1-355c2ad34c72",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "12.366722ms",
		"executionTime": "11.709698ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("237731446") AND user.id <= 
 int64("237731546") ;
 

{
	"requestID": "f09f215f-ea58-446c-bfa1-ee0111cd1ac6",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.865577ms",
		"executionTime": "16.093233ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2000-03-25T21:14:49" )
AND user.user_since <= 
DATETIME(
 "2000-03-25T21:19:49" )
;
 

{
	"requestID": "89c7f721-bc23-42e3-afdb-d35642c41d83",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "31.369224ms",
		"executionTime": "29.876365ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

104
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2013-04-04T23:34:27" )
AND gbu.user_since <= 
DATETIME(
 "2013-04-04T23:39:27" )
;
 

{
	"requestID": "4b93ccb3-cf1d-4834-bf7f-ab6b18e1ef85",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "35.118661ms",
		"executionTime": "33.986629ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

105
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2006-09-06T16:30:00" )
AND gbu.user_since <= 
DATETIME(
 "2006-09-06T16:35:00" )
;
 

{
	"requestID": "f89727f1-fbf7-477b-89b8-09cd2060eddf",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "35.527131ms",
		"executionTime": "34.607783ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2010-07-09T05:46:07" )
AND cm.send_time <
DATETIME(
 "2010-07-09T05:51:07" );
 

{
	"requestID": "139d3016-9657-423b-a1eb-6d2e417d4c56",
	"signature": {
		"*": "*"
	},
	"results": [ null
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.348205ms",
		"executionTime": "40.697714ms",
		"resultCount": 1,
		"resultSize": 5,
		"processedObjects": 0
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2007-09-08T01:24:11" )
AND cm.send_time <
DATETIME(
 "2007-09-08T01:29:11" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "86b07a50-78e3-4350-ac9f-1c6ee9305046",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "83.735275ms",
		"executionTime": "81.360867ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-02-07T07:37:10" )
AND cm.send_time <
DATETIME(
 "2012-02-07T07:42:10" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "efb1e002-ce03-4c9e-963b-c4e32d746670",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "63.469815ms",
		"executionTime": "61.365394ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 26.9049  88.6646 ,
 26.914900000000003  88.6646 ,
 26.914900000000003  88.6746 ,
 26.9049  88.6746 ,
 26.9049  88.6646 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "bd782ad6-34bb-4420-9817-2a9e57a6f40e",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.610539ms",
		"executionTime": "37.492907ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1010
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "XPeria" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "3d3d07c9-6daf-493b-857b-3f2b038be48a",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 2526, "user": { "screen_name": "ValeryVeith#161", "lang": "en", "friends_count": 175, "statuses_count": 460, "name": "Valery Veith", "followers_count": 293 }, "sender_location": {"type":"Point","coordinates":[37.7963,73.5222],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-02-28T19:02:13.000", "referred_topics": [ "XPeria", "microphone", "technology", "electronics", "hardware" ], "message_text": "Just got XPeria this morning, really dislike its microphone, it is really terrible", "sentiment": 0 } }
, { "cm": { "chirpid": 2146, "user": { "screen_name": "CraigRosensteel*391", "lang": "en", "friends_count": 21, "statuses_count": 449, "name": "Craig Rosensteel", "followers_count": 65 }, "sender_location": {"type":"Point","coordinates":[46.3008,82.6543],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-01-19T14:23:07.000", "referred_topics": [ "XPeria", "resolution", "gadget" ], "message_text": "Just received XPeria today,  have no idea about its resolution, it is really okey", "sentiment": 2 } }
, { "cm": { "chirpid": 3116, "user": { "screen_name": "AminaHoffhants!851", "lang": "en", "friends_count": 248, "statuses_count": 309, "name": "Amina Hoffhants", "followers_count": 365 }, "sender_location": {"type":"Point","coordinates":[35.8655,68.2786],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-03-16T10:59:45.000", "referred_topics": [ "XPeria", "resolution", "electronics", "gadget", "hardware", "device" ], "message_text": "Playing with XPeria today, quite love its resolution, it is just awesome", "sentiment": 4 } }
, { "cm": { "chirpid": 4344, "user": { "screen_name": "BlanchGiesen!19", "lang": "en", "friends_count": 125, "statuses_count": 151, "name": "Blanch Giesen", "followers_count": 259 }, "sender_location": {"type":"Point","coordinates":[28.787899,80.2044],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-01-02T08:27:16.000", "referred_topics": [ "XPeria", "microphone", "device", "electronics" ], "message_text": "Checking XPeria today, quite like the microphone, it is really amazing", "sentiment": 4 } }
, { "cm": { "chirpid": 1686, "user": { "screen_name": "PeggieBlessig_547", "lang": "en", "friends_count": 11, "statuses_count": 50, "name": "Peggie Blessig", "followers_count": 7 }, "sender_location": {"type":"Point","coordinates":[45.886,83.1154],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-08-26T12:41:12.000", "referred_topics": [ "XPeria", "microphone", "electronics", "hardware", "device", "gadget" ], "message_text": "Just received XPeria tonight, sort of hate the microphone, it is terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3819, "user": { "screen_name": "AgustinMitchell#637", "lang": "en", "friends_count": 228, "statuses_count": 3, "name": "Agustin Mitchell", "followers_count": 416 }, "sender_location": {"type":"Point","coordinates":[36.1096,96.5697],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-07-08T23:03:55.000", "referred_topics": [ "XPeria", "resolution", "hardware" ], "message_text": "Just got XPeria this morning, quite hate the resolution, it is awful", "sentiment": 0 } }
, { "cm": { "chirpid": 3230, "user": { "screen_name": "TammyHenderson!255", "lang": "en", "friends_count": 287, "statuses_count": 313, "name": "Tammy Henderson", "followers_count": 389 }, "sender_location": {"type":"Point","coordinates":[46.1176,89.9612],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-05-20T06:37:51.000", "referred_topics": [ "XPeria", "microphone", "electronics", "device", "hardware", "gadget" ], "message_text": "Playing with XPeria tonight, sort of dislike its microphone, it is awful", "sentiment": 1 } }
, { "cm": { "chirpid": 2116, "user": { "screen_name": "AlyssaJohann*699", "lang": "en", "friends_count": 40, "statuses_count": 251, "name": "Alyssa Johann", "followers_count": 210 }, "sender_location": {"type":"Point","coordinates":[33.6708,80.6835],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-08-01T05:14:12.000", "referred_topics": [ "XPeria", "microphone", "technology", "gadget", "electronics", "device", "hardware" ], "message_text": "Just received XPeria tonight,  have no idea about the microphone, it is just okey", "sentiment": 2 } }
, { "cm": { "chirpid": 2380, "user": { "screen_name": "KyleeMingle*46", "lang": "en", "friends_count": 237, "statuses_count": 120, "name": "Kylee Mingle", "followers_count": 390 }, "sender_location": {"type":"Point","coordinates":[43.6995,68.5837],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-05-01T16:23:30.000", "referred_topics": [ "XPeria", "resolution", "technology", "electronics", "gadget", "hardware" ], "message_text": "Playing with XPeria today,  have no idea about the resolution, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 4696, "user": { "screen_name": "GwendolinePatterson!273", "lang": "en", "friends_count": 308, "statuses_count": 110, "name": "Gwendoline Patterson", "followers_count": 381 }, "sender_location": {"type":"Point","coordinates":[34.4781,70.1684],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-10-05T17:09:59.000", "referred_topics": [ "XPeria", "microphone", "gadget", "device" ], "message_text": "Just got XPeria tonight,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "69.244364ms",
		"executionTime": "68.28564ms",
		"resultCount": 10,
		"resultSize": 5472,
		"processedObjects": 84
	}
}

1011
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where edit_distance_contains(cm.message_text, 
 "XPeria" ,1)[0] order by cm.send_time desc
limit 10
;
 

{
	"requestID": "56d7dacb-dddb-4e33-a201-046c0d67f0dd",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 2526, "user": { "screen_name": "ValeryVeith#161", "lang": "en", "friends_count": 175, "statuses_count": 460, "name": "Valery Veith", "followers_count": 293 }, "sender_location": {"type":"Point","coordinates":[37.7963,73.5222],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-02-28T19:02:13.000", "referred_topics": [ "XPeria", "microphone", "technology", "electronics", "hardware" ], "message_text": "Just got XPeria this morning, really dislike its microphone, it is really terrible", "sentiment": 0 } }
, { "cm": { "chirpid": 2146, "user": { "screen_name": "CraigRosensteel*391", "lang": "en", "friends_count": 21, "statuses_count": 449, "name": "Craig Rosensteel", "followers_count": 65 }, "sender_location": {"type":"Point","coordinates":[46.3008,82.6543],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-01-19T14:23:07.000", "referred_topics": [ "XPeria", "resolution", "gadget" ], "message_text": "Just received XPeria today,  have no idea about its resolution, it is really okey", "sentiment": 2 } }
, { "cm": { "chirpid": 3116, "user": { "screen_name": "AminaHoffhants!851", "lang": "en", "friends_count": 248, "statuses_count": 309, "name": "Amina Hoffhants", "followers_count": 365 }, "sender_location": {"type":"Point","coordinates":[35.8655,68.2786],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-03-16T10:59:45.000", "referred_topics": [ "XPeria", "resolution", "electronics", "gadget", "hardware", "device" ], "message_text": "Playing with XPeria today, quite love its resolution, it is just awesome", "sentiment": 4 } }
, { "cm": { "chirpid": 4344, "user": { "screen_name": "BlanchGiesen!19", "lang": "en", "friends_count": 125, "statuses_count": 151, "name": "Blanch Giesen", "followers_count": 259 }, "sender_location": {"type":"Point","coordinates":[28.787899,80.2044],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-01-02T08:27:16.000", "referred_topics": [ "XPeria", "microphone", "device", "electronics" ], "message_text": "Checking XPeria today, quite like the microphone, it is really amazing", "sentiment": 4 } }
, { "cm": { "chirpid": 1686, "user": { "screen_name": "PeggieBlessig_547", "lang": "en", "friends_count": 11, "statuses_count": 50, "name": "Peggie Blessig", "followers_count": 7 }, "sender_location": {"type":"Point","coordinates":[45.886,83.1154],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-08-26T12:41:12.000", "referred_topics": [ "XPeria", "microphone", "electronics", "hardware", "device", "gadget" ], "message_text": "Just received XPeria tonight, sort of hate the microphone, it is terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3819, "user": { "screen_name": "AgustinMitchell#637", "lang": "en", "friends_count": 228, "statuses_count": 3, "name": "Agustin Mitchell", "followers_count": 416 }, "sender_location": {"type":"Point","coordinates":[36.1096,96.5697],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-07-08T23:03:55.000", "referred_topics": [ "XPeria", "resolution", "hardware" ], "message_text": "Just got XPeria this morning, quite hate the resolution, it is awful", "sentiment": 0 } }
, { "cm": { "chirpid": 3230, "user": { "screen_name": "TammyHenderson!255", "lang": "en", "friends_count": 287, "statuses_count": 313, "name": "Tammy Henderson", "followers_count": 389 }, "sender_location": {"type":"Point","coordinates":[46.1176,89.9612],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-05-20T06:37:51.000", "referred_topics": [ "XPeria", "microphone", "electronics", "device", "hardware", "gadget" ], "message_text": "Playing with XPeria tonight, sort of dislike its microphone, it is awful", "sentiment": 1 } }
, { "cm": { "chirpid": 2116, "user": { "screen_name": "AlyssaJohann*699", "lang": "en", "friends_count": 40, "statuses_count": 251, "name": "Alyssa Johann", "followers_count": 210 }, "sender_location": {"type":"Point","coordinates":[33.6708,80.6835],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-08-01T05:14:12.000", "referred_topics": [ "XPeria", "microphone", "technology", "gadget", "electronics", "device", "hardware" ], "message_text": "Just received XPeria tonight,  have no idea about the microphone, it is just okey", "sentiment": 2 } }
, { "cm": { "chirpid": 2380, "user": { "screen_name": "KyleeMingle*46", "lang": "en", "friends_count": 237, "statuses_count": 120, "name": "Kylee Mingle", "followers_count": 390 }, "sender_location": {"type":"Point","coordinates":[43.6995,68.5837],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-05-01T16:23:30.000", "referred_topics": [ "XPeria", "resolution", "technology", "electronics", "gadget", "hardware" ], "message_text": "Playing with XPeria today,  have no idea about the resolution, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 4696, "user": { "screen_name": "GwendolinePatterson!273", "lang": "en", "friends_count": 308, "statuses_count": 110, "name": "Gwendoline Patterson", "followers_count": 381 }, "sender_location": {"type":"Point","coordinates":[34.4781,70.1684],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-10-05T17:09:59.000", "referred_topics": [ "XPeria", "microphone", "gadget", "device" ], "message_text": "Just got XPeria tonight,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "66.950051ms",
		"executionTime": "66.126552ms",
		"resultCount": 10,
		"resultSize": 5472,
		"processedObjects": 660
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-05-14T13:23:43" )
and
gbu.user_since <
DATETIME(
 "2001-05-14T13:28:43" )
and
gbm.send_time >=
DATETIME(
 "2001-04-13T03:33:06" )
and
gbm.send_time <
DATETIME(
 "2001-04-14T03:33:06" )
;
 

{
	"requestID": "251872c6-e5c1-4175-870b-12a51ccd18c3",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "47.687601ms",
		"executionTime": "46.236911ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-12-04T11:09:03" )
and gbm.send_time < 
DATETIME(
 "2004-12-04T11:14:03" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2006-08-10T20:47:10" )
and gbu.user_since <
DATETIME(
 "2006-08-11T20:47:10" )
;
 

{
	"requestID": "9df8ee98-028d-42e6-9790-c36938904061",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "46.466839ms",
		"executionTime": "43.300569ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2001-09-26T10:47:07" )
AND user.user_since < 
DATETIME(
 "2001-09-26T10:52:07" )
AND msg.send_time >=
DATETIME(
 "2010-06-03T20:49:10" )
AND msg.send_time <
DATETIME(
 "2010-06-04T20:49:10" )
GROUP BY user.id;
;
 

{
	"requestID": "46c52b8e-d895-4a5a-8a32-7c1524f3cfaa",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "57.926655ms",
		"executionTime": "57.192975ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2014-04-14T04:17:05" )
AND user.user_since < 
DATETIME(
 "2014-04-14T04:22:05" )
AND msg.send_time >=
DATETIME(
 "2010-12-11T04:00:44" )
AND msg.send_time <
DATETIME(
 "2010-12-12T04:00:44" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "24a868cf-c596-40f2-a99f-eaabc4acef9b",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "63.401979ms",
		"executionTime": "62.060176ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */= gbu.id 
and
gbm.send_time >=
DATETIME(
 "2010-05-18T22:29:10" )
and
gbm.send_time <
DATETIME(
 "2010-05-18T22:34:10" )
and
gbu.user_since >= 
DATETIME(
 "2011-11-17T23:18:54" )
and
gbu.user_since <
DATETIME(
 "2011-11-18T23:18:54" )
;
 

{
	"requestID": "33448c1b-fb9b-414e-b9c7-dc5b87b08e47",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "49.314757ms",
		"executionTime": "47.889823ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2003-02-09T08:16:51" )
and gbm.send_time < 
DATETIME(
 "2003-02-09T08:21:51" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2008-06-27T17:06:04" )
and gbu.user_since <
DATETIME(
 "2008-06-28T17:06:04" )
;
 

{
	"requestID": "717b7d87-d52b-4e77-bd0a-1b767f9c7ff1",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.382669ms",
		"executionTime": "39.254191ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2008-07-05T10:28:54" )
AND msg.send_time <
DATETIME(
 "2008-07-05T10:33:54" )
AND user.user_since >= 
DATETIME(
 "2011-03-20T07:14:39" )
AND user.user_since < 
DATETIME(
 "2011-03-21T07:14:39" )
GROUP BY user.id;
;
 

{
	"requestID": "cc2d71a4-fb60-4fc0-8df9-dae4838e821f",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "50.481034ms",
		"executionTime": "49.067635ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2006-09-14T23:09:06" )
AND msg.send_time <
DATETIME(
 "2006-09-14T23:14:06" )
AND user.user_since >= 
DATETIME(
 "2012-09-26T09:15:20" )
AND user.user_since < 
DATETIME(
 "2012-09-27T09:15:20" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "d58378b1-b877-4215-b2e1-858ff7d1c394",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "50.252534ms",
		"executionTime": "47.574077ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1016
Ver 1
USE bigfun;
from ChirpMessages cm1
let ev = st_make_envelope(
st_x(cm1.sender_location)-
 0.01 , 
st_y(cm1.sender_location)-
 0.01 , 
st_x(cm1.sender_location)+
 0.01 , 
st_y(cm1.sender_location)+
 0.01 , 4326)
WHERE
cm1.send_time >DATETIME(
 "2006-04-21T04:38:20" )
AND
cm1.send_time <=DATETIME(
 "2006-04-21T04:43:20"  )
SELECT cm1,(select cm2
from ChirpMessages cm2 
where cm1.chirpid /*+ indexnl */!=cm2.chirpid and st_contains(ev, cm2.sender_location)order by cm2.sender_time limit 10 
)
;
 

{
	"requestID": "ee3550ec-8305-46a5-87f7-a1e54d8e47a8",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.765757ms",
		"executionTime": "59.878089ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 4813
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)= 
 int64("2") from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-04-16T00:00:24" )
AND cm.send_time <
DATETIME(
 "2009-04-16T00:05:24" )
;
 

{
	"requestID": "42344350-642e-4a07-a50a-925439d3e23c",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "477.081755ms",
		"executionTime": "474.097228ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2002-03-28T14:56:46" )
AND cm.send_time <
DATETIME(
 "2002-03-28T15:01:46" )
group by sentiment(cm.message_text);
 

{
	"requestID": "4e7eeec1-5eab-40b3-852b-005117dd18ae",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "441.924381ms",
		"executionTime": "441.051178ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("124253522") ;
 

{
	"requestID": "35d642d5-5f1e-4541-86a2-efe73736e154",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "15.030432ms",
		"executionTime": "14.239241ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("20822253") AND user.id <= 
 int64("20822353") ;
 

{
	"requestID": "c905cce1-097a-470d-99fe-0ca36b4324f6",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "27.999461ms",
		"executionTime": "26.837474ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2013-12-27T23:28:08" )
AND user.user_since <= 
DATETIME(
 "2013-12-27T23:33:08" )
;
 

{
	"requestID": "0ebcb38c-9dd9-4de6-a1c9-2c368aa88e43",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.569033ms",
		"executionTime": "23.994295ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

104
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2004-11-18T06:36:53" )
AND gbu.user_since <= 
DATETIME(
 "2004-11-18T06:41:53" )
;
 

{
	"requestID": "e59cf63c-73e3-4a99-b5cb-95225db151c9",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "35.409434ms",
		"executionTime": "34.055395ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

105
Ver 1
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2003-11-28T03:19:40" )
AND gbu.user_since <= 
DATETIME(
 "2003-11-28T03:24:40" )
;
 

{
	"requestID": "6a4fa7eb-0587-45e2-8086-0f6678c3b3d7",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "34.937454ms",
		"executionTime": "33.341949ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-08-19T03:12:41" )
AND cm.send_time <
DATETIME(
 "2001-08-19T03:17:41" );
 

{
	"requestID": "8c9e86cb-1ca7-4dc9-a56e-b702b45c3363",
	"signature": {
		"*": "*"
	},
	"results": [ null
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "43.555437ms",
		"executionTime": "42.317975ms",
		"resultCount": 1,
		"resultSize": 5,
		"processedObjects": 0
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2004-09-21T23:00:56" )
AND cm.send_time <
DATETIME(
 "2004-09-21T23:05:56" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "8182af3d-1692-421c-ae60-1e6b6405448e",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "44.671161ms",
		"executionTime": "42.962746ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-04-22T16:06:33" )
AND cm.send_time <
DATETIME(
 "2005-04-22T16:11:33" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "39ba3bcb-5703-4f7f-8370-3b60a85b08a7",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.145383ms",
		"executionTime": "58.12401ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 28.4248  95.2673 ,
 28.434800000000003  95.2673 ,
 28.434800000000003  95.27730000000001 ,
 28.4248  95.27730000000001 ,
 28.4248  95.2673 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "5087dd96-54f4-4076-84e6-f0d60b8f0b63",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "32.182276ms",
		"executionTime": "29.768052ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1010
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "XPeria" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "39e85d49-99f2-443a-8845-d3e690f36e0d",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 2526, "user": { "screen_name": "ValeryVeith#161", "lang": "en", "friends_count": 175, "statuses_count": 460, "name": "Valery Veith", "followers_count": 293 }, "sender_location": {"type":"Point","coordinates":[37.7963,73.5222],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-02-28T19:02:13.000", "referred_topics": [ "XPeria", "microphone", "technology", "electronics", "hardware" ], "message_text": "Just got XPeria this morning, really dislike its microphone, it is really terrible", "sentiment": 0 } }
, { "cm": { "chirpid": 2146, "user": { "screen_name": "CraigRosensteel*391", "lang": "en", "friends_count": 21, "statuses_count": 449, "name": "Craig Rosensteel", "followers_count": 65 }, "sender_location": {"type":"Point","coordinates":[46.3008,82.6543],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-01-19T14:23:07.000", "referred_topics": [ "XPeria", "resolution", "gadget" ], "message_text": "Just received XPeria today,  have no idea about its resolution, it is really okey", "sentiment": 2 } }
, { "cm": { "chirpid": 3116, "user": { "screen_name": "AminaHoffhants!851", "lang": "en", "friends_count": 248, "statuses_count": 309, "name": "Amina Hoffhants", "followers_count": 365 }, "sender_location": {"type":"Point","coordinates":[35.8655,68.2786],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-03-16T10:59:45.000", "referred_topics": [ "XPeria", "resolution", "electronics", "gadget", "hardware", "device" ], "message_text": "Playing with XPeria today, quite love its resolution, it is just awesome", "sentiment": 4 } }
, { "cm": { "chirpid": 4344, "user": { "screen_name": "BlanchGiesen!19", "lang": "en", "friends_count": 125, "statuses_count": 151, "name": "Blanch Giesen", "followers_count": 259 }, "sender_location": {"type":"Point","coordinates":[28.787899,80.2044],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-01-02T08:27:16.000", "referred_topics": [ "XPeria", "microphone", "device", "electronics" ], "message_text": "Checking XPeria today, quite like the microphone, it is really amazing", "sentiment": 4 } }
, { "cm": { "chirpid": 1686, "user": { "screen_name": "PeggieBlessig_547", "lang": "en", "friends_count": 11, "statuses_count": 50, "name": "Peggie Blessig", "followers_count": 7 }, "sender_location": {"type":"Point","coordinates":[45.886,83.1154],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-08-26T12:41:12.000", "referred_topics": [ "XPeria", "microphone", "electronics", "hardware", "device", "gadget" ], "message_text": "Just received XPeria tonight, sort of hate the microphone, it is terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3819, "user": { "screen_name": "AgustinMitchell#637", "lang": "en", "friends_count": 228, "statuses_count": 3, "name": "Agustin Mitchell", "followers_count": 416 }, "sender_location": {"type":"Point","coordinates":[36.1096,96.5697],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-07-08T23:03:55.000", "referred_topics": [ "XPeria", "resolution", "hardware" ], "message_text": "Just got XPeria this morning, quite hate the resolution, it is awful", "sentiment": 0 } }
, { "cm": { "chirpid": 3230, "user": { "screen_name": "TammyHenderson!255", "lang": "en", "friends_count": 287, "statuses_count": 313, "name": "Tammy Henderson", "followers_count": 389 }, "sender_location": {"type":"Point","coordinates":[46.1176,89.9612],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-05-20T06:37:51.000", "referred_topics": [ "XPeria", "microphone", "electronics", "device", "hardware", "gadget" ], "message_text": "Playing with XPeria tonight, sort of dislike its microphone, it is awful", "sentiment": 1 } }
, { "cm": { "chirpid": 2116, "user": { "screen_name": "AlyssaJohann*699", "lang": "en", "friends_count": 40, "statuses_count": 251, "name": "Alyssa Johann", "followers_count": 210 }, "sender_location": {"type":"Point","coordinates":[33.6708,80.6835],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-08-01T05:14:12.000", "referred_topics": [ "XPeria", "microphone", "technology", "gadget", "electronics", "device", "hardware" ], "message_text": "Just received XPeria tonight,  have no idea about the microphone, it is just okey", "sentiment": 2 } }
, { "cm": { "chirpid": 2380, "user": { "screen_name": "KyleeMingle*46", "lang": "en", "friends_count": 237, "statuses_count": 120, "name": "Kylee Mingle", "followers_count": 390 }, "sender_location": {"type":"Point","coordinates":[43.6995,68.5837],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-05-01T16:23:30.000", "referred_topics": [ "XPeria", "resolution", "technology", "electronics", "gadget", "hardware" ], "message_text": "Playing with XPeria today,  have no idea about the resolution, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 4696, "user": { "screen_name": "GwendolinePatterson!273", "lang": "en", "friends_count": 308, "statuses_count": 110, "name": "Gwendoline Patterson", "followers_count": 381 }, "sender_location": {"type":"Point","coordinates":[34.4781,70.1684],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-10-05T17:09:59.000", "referred_topics": [ "XPeria", "microphone", "gadget", "device" ], "message_text": "Just got XPeria tonight,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "51.465613ms",
		"executionTime": "50.622636ms",
		"resultCount": 10,
		"resultSize": 5472,
		"processedObjects": 84
	}
}

1011
Ver 1
USE bigfun;
select cm from ChirpMessages cm
where edit_distance_contains(cm.message_text, 
 "Lumia" ,1)[0] order by cm.send_time desc
limit 10
;
 

{
	"requestID": "395b7172-d1b3-4caa-95a5-5fc02d50e69c",
	"signature": {
		"*": "*"
	},
	"results": [ { "cm": { "chirpid": 1311, "user": { "screen_name": "QuiannaWyatt!778", "lang": "en", "friends_count": 185, "statuses_count": 347, "name": "Quianna Wyatt", "followers_count": 204 }, "sender_location": {"type":"Point","coordinates":[24.4891,74.014],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2014-06-19T20:37:30.000", "referred_topics": [ "Lumia", "resolution", "technology" ], "message_text": "Using Lumia today, a little bit dislike its resolution, it is really terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 3885, "user": { "screen_name": "JannahScott*269", "lang": "en", "friends_count": 352, "statuses_count": 183, "name": "Jannah Scott", "followers_count": 413 }, "sender_location": {"type":"Point","coordinates":[45.4724,70.4459],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2013-07-12T01:47:07.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "electronics" ], "message_text": "Just received Lumia tonight, sort of dislike the microphone, it is just bad", "sentiment": 1 } }
, { "cm": { "chirpid": 4467, "user": { "screen_name": "MaximillianKeppel*859", "lang": "en", "friends_count": 112, "statuses_count": 389, "name": "Maximillian Keppel", "followers_count": 284 }, "sender_location": {"type":"Point","coordinates":[30.0894,92.7029],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-06-30T18:49:22.000", "referred_topics": [ "Lumia", "microphone", "technology", "device", "electronics" ], "message_text": "Checking Lumia this morning,  have no idea about the microphone, it is just so so", "sentiment": 2 } }
, { "cm": { "chirpid": 2212, "user": { "screen_name": "JacobMonroe_75", "lang": "en", "friends_count": 170, "statuses_count": 320, "name": "Jacob Monroe", "followers_count": 282 }, "sender_location": {"type":"Point","coordinates":[46.2206,68.4032],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2012-04-04T09:04:20.000", "referred_topics": [ "Lumia", "resolution", "hardware" ], "message_text": "Checking Lumia today, sort of hate its resolution, it is just terrible", "sentiment": 1 } }
, { "cm": { "chirpid": 1200, "user": { "screen_name": "GordonPainter#786", "lang": "en", "friends_count": 381, "statuses_count": 262, "name": "Gordon Painter", "followers_count": 564 }, "sender_location": {"type":"Point","coordinates":[45.168,79.3912],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-12-15T07:00:41.000", "referred_topics": [ "Lumia", "resolution", "technology", "electronics", "gadget", "device" ], "message_text": "Just got Lumia today, a little bit hate the resolution, it is just awful", "sentiment": 1 } }
, { "cm": { "chirpid": 3087, "user": { "screen_name": "HarrisonSchofield#748", "lang": "en", "friends_count": 353, "statuses_count": 58, "name": "Harrison Schofield", "followers_count": 351 }, "sender_location": {"type":"Point","coordinates":[40.608,67.846],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-04-26T06:46:46.000", "referred_topics": [ "Lumia", "resolution", "technology", "device", "electronics", "gadget" ], "message_text": "Checking Lumia today, quite hate the resolution, it is bad", "sentiment": 0 } }
, { "cm": { "chirpid": 1423, "user": { "screen_name": "RenatoClewett_851", "lang": "en", "friends_count": 220, "statuses_count": 209, "name": "Renato Clewett", "followers_count": 354 }, "sender_location": {"type":"Point","coordinates":[43.0489,83.4225],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-23T23:59:16.000", "referred_topics": [ "Lumia", "microphone", "device", "technology", "gadget", "hardware", "electronics" ], "message_text": "Checking Lumia this morning, extremely hate the microphone, it is really awful", "sentiment": 0 } }
, { "cm": { "chirpid": 614, "user": { "screen_name": "LouellaMcloskey_968", "lang": "en", "friends_count": 101, "statuses_count": 197, "name": "Louella Mcloskey", "followers_count": 277 }, "sender_location": {"type":"Point","coordinates":[35.5482,70.101],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2011-01-06T08:52:47.000", "referred_topics": [ "Lumia", "microphone", "electronics", "hardware", "gadget", "technology", "device" ], "message_text": "Just got Lumia this morning,  have no idea about its microphone, it is really average", "sentiment": 2 } }
, { "cm": { "chirpid": 3797, "user": { "screen_name": "EddieStainforth*287", "lang": "en", "friends_count": 103, "statuses_count": 414, "name": "Eddie Stainforth", "followers_count": 261 }, "sender_location": {"type":"Point","coordinates":[27.3499,66.5961],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2010-02-27T02:01:05.000", "referred_topics": [ "Lumia", "resolution", "hardware", "gadget", "electronics" ], "message_text": "Just got Lumia this morning, a little bit dislike its resolution, it is bad", "sentiment": 1 } }
, { "cm": { "chirpid": 3532, "user": { "screen_name": "AlvenaRobertson#214", "lang": "en", "friends_count": 247, "statuses_count": 443, "name": "Alvena Robertson", "followers_count": 321 }, "sender_location": {"type":"Point","coordinates":[34.8366,70.5078],"crs":{"type":"name","properties":{"name":"EPSG:4326"}}}, "send_time": "2009-12-19T21:25:16.000", "referred_topics": [ "Lumia", "resolution", "gadget", "device" ], "message_text": "Just received Lumia today,  have no idea about its resolution, it is just so so", "sentiment": 2 } }
 ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "43.187512ms",
		"executionTime": "41.629528ms",
		"resultCount": 10,
		"resultSize": 5481,
		"processedObjects": 202
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-07-20T10:01:10" )
and
gbu.user_since <
DATETIME(
 "2001-07-20T10:06:10" )
and
gbm.send_time >=
DATETIME(
 "2009-08-06T02:14:27" )
and
gbm.send_time <
DATETIME(
 "2009-08-07T02:14:27" )
;
 

{
	"requestID": "34eec626-a41c-435e-a48d-25a05797e334",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "55.432739ms",
		"executionTime": "53.310842ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2009-01-25T14:03:36" )
and gbm.send_time < 
DATETIME(
 "2009-01-25T14:08:36" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2011-10-28T09:10:10" )
and gbu.user_since <
DATETIME(
 "2011-10-29T09:10:10" )
;
 

{
	"requestID": "e5e240b8-0b28-43ca-8eda-48fceaf8ab61",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "39.150256ms",
		"executionTime": "38.244785ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2007-10-15T23:00:30" )
AND user.user_since < 
DATETIME(
 "2007-10-15T23:05:30" )
AND msg.send_time >=
DATETIME(
 "2000-04-19T01:30:48" )
AND msg.send_time <
DATETIME(
 "2000-04-20T01:30:48" )
GROUP BY user.id;
;
 

{
	"requestID": "6f938a7f-8f6c-4343-8a15-3c3f76ed8e00",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "59.979618ms",
		"executionTime": "59.1538ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

1015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2010-06-27T09:23:41" )
AND user.user_since < 
DATETIME(
 "2010-06-27T09:28:41" )
AND msg.send_time >=
DATETIME(
 "2013-07-20T14:12:15" )
AND msg.send_time <
DATETIME(
 "2013-07-21T14:12:15" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "7fae99fd-8742-490f-a3a3-c615f9a67c81",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "63.643079ms",
		"executionTime": "62.164411ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */= gbu.id 
and
gbm.send_time >=
DATETIME(
 "2006-08-24T09:40:05" )
and
gbm.send_time <
DATETIME(
 "2006-08-24T09:45:05" )
and
gbu.user_since >= 
DATETIME(
 "2003-01-22T14:32:33" )
and
gbu.user_since <
DATETIME(
 "2003-01-23T14:32:33" )
;
 

{
	"requestID": "89a685fb-5d13-4415-b038-5d1178b643c2",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "64.293478ms",
		"executionTime": "62.72402ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 2578
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2006-07-05T15:12:26" )
and gbm.send_time < 
DATETIME(
 "2006-07-05T15:17:26" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2001-06-23T19:18:21" )
and gbu.user_since <
DATETIME(
 "2001-06-24T19:18:21" )
;
 

{
	"requestID": "1074a5ff-1154-471f-b430-4ade567b94fb",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "62.770625ms",
		"executionTime": "61.726113ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2004-09-14T11:48:13" )
AND msg.send_time <
DATETIME(
 "2004-09-14T11:53:13" )
AND user.user_since >= 
DATETIME(
 "2004-11-18T12:46:17" )
AND user.user_since < 
DATETIME(
 "2004-11-19T12:46:17" )
GROUP BY user.id;
;
 

{
	"requestID": "84e79717-9ea0-4fe5-a6b2-3f7c258fd29b",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "66.793698ms",
		"executionTime": "63.912734ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND msg.send_time >=
DATETIME(
 "2012-07-14T04:05:50" )
AND msg.send_time <
DATETIME(
 "2012-07-14T04:10:50" )
AND user.user_since >= 
DATETIME(
 "2012-06-26T20:48:50" )
AND user.user_since < 
DATETIME(
 "2012-06-27T20:48:50" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "854b3451-13ed-4464-bd3d-738ba4605a69",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "89.894805ms",
		"executionTime": "88.855002ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1016
Ver 1
USE bigfun;
from ChirpMessages cm1
let ev = st_make_envelope(
st_x(cm1.sender_location)-
 0.01 , 
st_y(cm1.sender_location)-
 0.01 , 
st_x(cm1.sender_location)+
 0.01 , 
st_y(cm1.sender_location)+
 0.01 , 4326)
WHERE
cm1.send_time >DATETIME(
 "2012-06-28T23:54:02" )
AND
cm1.send_time <=DATETIME(
 "2012-06-28T23:59:02"  )
SELECT cm1,(select cm2
from ChirpMessages cm2 
where cm1.chirpid /*+ indexnl */!=cm2.chirpid and st_contains(ev, cm2.sender_location)order by cm2.sender_time limit 10 
)
;
 

{
	"requestID": "f8da9406-ecee-4a96-ae1e-f444668e4d9c",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "57.984922ms",
		"executionTime": "55.729407ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 4813
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)= 
 int64("0") from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2001-08-09T23:17:10" )
AND cm.send_time <
DATETIME(
 "2001-08-09T23:22:10" )
;
 

{
	"requestID": "2b40da1e-1af0-4276-a463-32cb3d1b8182",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "459.473425ms",
		"executionTime": "457.358204ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2005-01-17T19:56:56" )
AND cm.send_time <
DATETIME(
 "2005-01-17T20:01:56" )
group by sentiment(cm.message_text);
 

{
	"requestID": "97b334b1-8cde-410f-be1a-a938912823ee",
	"signature": {
		"*": "*"
	},
	"results": [  ]
	,
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "551.82463ms",
		"executionTime": "551.1869ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 0
	}
}

