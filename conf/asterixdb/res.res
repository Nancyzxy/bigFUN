101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("65746787") ;
 

{
	"requestID": "23a312ae-0c4a-40c3-996e-f032513152ab",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/7-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "389.278326ms",
		"executionTime": "379.138743ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("7943248") AND user.id <= 
 int64("7943348") ;
 

{
	"requestID": "3de12689-b392-4765-8477-13ff5f86d726",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/8-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "92.750376ms",
		"executionTime": "90.264958ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
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
	"requestID": "210a1f38-070e-4165-93b9-3666a132cac5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/9-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "164.194189ms",
		"executionTime": "162.739958ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 118
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
	"requestID": "da93ee21-2dde-4ad4-88da-9216a571c442",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/10-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "126.940808ms",
		"executionTime": "124.916895ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 140
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
	"requestID": "eaf6b249-408c-4279-b186-5efcb535b1c6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/11-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "92.309379ms",
		"executionTime": "89.6816ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 84
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
 "2003-09-26T10:38:53" );
 

{
	"requestID": "567f4db0-9233-42d4-8a99-955e60f16947",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/12-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "176.569347ms",
		"executionTime": "175.053246ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 154
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
 "2000-09-10T20:36:09" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "87c06dd1-f39b-4c1c-a080-ac3c9afa3e9c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/13-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "123.10891ms",
		"executionTime": "116.140829ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
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
 "2007-03-19T15:33:43" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "0f6210d0-53d2-454c-8553-baf5e19ae954",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/14-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "139.24519ms",
		"executionTime": "136.581298ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 130
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
	"requestID": "6c5a8c22-90c5-4ece-8489-f18f748eb1a8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/15-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "255.673205ms",
		"executionTime": "253.80521ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 56
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
	"requestID": "5aeffc6f-447d-478f-9ce2-e91695a8b96c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/16-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "215.781390744s",
		"executionTime": "215.780143879s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-05-27T05:13:41" )
and
gbu.user_since <
DATETIME(
 "2008-05-27T05:18:41" )
and
gbm.send_time >=
DATETIME(
 "2005-05-22T23:40:33" )
and
gbm.send_time <
DATETIME(
 "2005-05-23T23:40:33" )
;
 

{
	"requestID": "df22447b-ebfc-4b54-9330-52b2549a0221",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/17-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.12655639s",
		"executionTime": "9.123412735s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167730
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-04-12T11:05:51" )
and gbm.send_time < 
DATETIME(
 "2010-04-12T11:10:51" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2011-11-26T21:45:26" )
and gbu.user_since <
DATETIME(
 "2011-11-27T21:45:26" )
;
 

{
	"requestID": "aa686957-3d58-4d63-becb-4e53193a1c0e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/18-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.331630564s",
		"executionTime": "2.329516595s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34316
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
 "2003-02-17T10:34:35" )
AND user.user_since < 
DATETIME(
 "2003-02-17T10:39:35" )
AND msg.send_time >=
DATETIME(
 "2007-02-17T21:27:47" )
AND msg.send_time <
DATETIME(
 "2007-02-18T21:27:47" )
GROUP BY user.id;
;
 

{
	"requestID": "abacb7ed-b5a3-4ec3-8ec0-2b2365328359",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/19-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.243078014s",
		"executionTime": "8.239836055s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168982
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
 "2013-05-12T12:35:28" )
AND user.user_since < 
DATETIME(
 "2013-05-12T12:40:28" )
AND msg.send_time >=
DATETIME(
 "2006-04-14T19:45:44" )
AND msg.send_time <
DATETIME(
 "2006-04-15T19:45:44" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "3995fb34-c218-4463-9ddb-ede13c92d566",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/20-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.08953917s",
		"executionTime": "7.087625586s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168522
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2006-05-10T19:09:14" )
and
gbu.user_since <
DATETIME(
 "2006-05-10T19:14:14" )
and
gbm.send_time >=
DATETIME(
 "2005-12-10T16:42:12" )
and
gbm.send_time <
DATETIME(
 "2005-12-11T16:42:12" )
;
 

{
	"requestID": "2b829e03-e814-49ec-b3ff-d3eb1036b8f3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/21-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "14.385443482s",
		"executionTime": "14.379764682s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251784
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-12-23T04:29:56" )
and gbm.send_time < 
DATETIME(
 "2004-12-23T04:34:56" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-04-17T18:18:32" )
and gbu.user_since <
DATETIME(
 "2005-04-18T18:18:32" )
;
 

{
	"requestID": "b0503d78-9ad9-41a7-b633-13cbc0f66102",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/22-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.952941403s",
		"executionTime": "4.949831639s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 204522
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2001-08-09T13:48:42" )
AND user.user_since < 
DATETIME(
 "2001-08-09T13:53:42" )
AND msg.send_time >=
DATETIME(
 "2005-11-15T11:31:51" )
AND msg.send_time <
DATETIME(
 "2005-11-16T11:31:51" )
GROUP BY user.id;
;
 

{
	"requestID": "dd8eee55-a6eb-4587-8a41-9a9c656e05b1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/23-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "108.816122ms",
		"executionTime": "104.120388ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 950
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-01-21T21:17:30" )
AND user.user_since < 
DATETIME(
 "2007-01-21T21:22:30" )
AND msg.send_time >=
DATETIME(
 "2005-01-02T09:56:12" )
AND msg.send_time <
DATETIME(
 "2005-01-03T09:56:12" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "12f14889-732b-435f-a4fa-ca7e2aa4ae3e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/24-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "93.285103ms",
		"executionTime": "90.408429ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 810
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2014-07-02T14:06:53" )
AND cm.send_time <
DATETIME(
 "2014-07-02T14:11:53" )
;
 

{
	"requestID": "d63d7589-6dfc-4b6f-8fd0-d3950ab4deee",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/25-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "730.242239ms",
		"executionTime": "721.681408ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 330
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2007-05-10T09:45:22" )
AND cm.send_time <
DATETIME(
 "2007-05-10T09:50:22" )
group by sentiment(cm.message_text);
 

{
	"requestID": "edddc307-e04f-463c-be6f-5303fc3427f3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/26-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "668.396712ms",
		"executionTime": "664.710116ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 276
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("26587806") ;
 

{
	"requestID": "c658b172-7b9b-4a40-9892-33c2c1ed69dd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/27-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "37.661941ms",
		"executionTime": "35.653975ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("51669631") AND user.id <= 
 int64("51679631") ;
 

{
	"requestID": "4c7bb1d0-0746-4f80-9cd0-4bac0ffc2beb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/28-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "262.926205ms",
		"executionTime": "261.54327ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2014-02-22T07:45:33" )
AND user.user_since <= 
DATETIME(
 "2014-02-22T16:45:33" )
;
 

{
	"requestID": "1fcda488-2e1a-4a3b-a92b-166472e0dfca",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/29-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "588.605858ms",
		"executionTime": "587.276335ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12696
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2009-01-14T08:53:35" )
AND gbu.user_since <= 
DATETIME(
 "2009-01-14T17:53:35" )
;
 

{
	"requestID": "e9cca57a-9fab-42bf-84a0-1afe8e70844d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/30-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "533.032578ms",
		"executionTime": "530.609797ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12428
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2004-03-02T15:47:19" )
AND gbu.user_since <= 
DATETIME(
 "2004-03-03T00:47:19" )
;
 

{
	"requestID": "38df88e2-9975-4f85-9ab0-0cf880c682e5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/31-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "479.208257ms",
		"executionTime": "476.69366ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12590
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-12-10T14:20:40" )
AND cm.send_time <
DATETIME(
 "2002-12-10T18:05:40" );
 

{
	"requestID": "413d8a15-f177-41ba-a891-9cd0e8ab1e95",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/32-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "109.915588ms",
		"executionTime": "107.554447ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12956
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2008-09-14T09:43:11" )
AND cm.send_time <
DATETIME(
 "2008-09-14T13:28:11" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "8c637f01-a64a-42e0-b672-d701c932d785",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/33-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "158.924177ms",
		"executionTime": "157.624091ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12680
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-06-01T09:18:30" )
AND cm.send_time <
DATETIME(
 "2003-06-01T13:03:30" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "13d9e594-58c2-41c4-a9b5-cc0ebd19314a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/34-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "172.611406ms",
		"executionTime": "170.920225ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 13100
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 24.7216  91.4681 ,
 24.8216  91.4681 ,
 24.8216  91.5681 ,
 24.7216  91.5681 ,
 24.7216  91.4681 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "32fbc5db-1f1b-40fa-b50a-768fd409fac9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/35-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "146.774381ms",
		"executionTime": "145.209557ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5540
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Galaxy" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "d72033f3-1e75-45b0-957a-261af53774c5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/36-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "136.253152843s",
		"executionTime": "136.252060832s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-11-28T21:54:44" )
and
gbu.user_since <
DATETIME(
 "2004-11-29T06:54:44" )
and
gbm.send_time >=
DATETIME(
 "2009-10-16T03:15:10" )
and
gbm.send_time <
DATETIME(
 "2009-10-17T03:15:10" )
;
 

{
	"requestID": "af0ea3d5-8f62-4943-a996-aab1664084d8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/37-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.069035892s",
		"executionTime": "7.06520073s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 181068
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2012-12-16T13:12:38" )
and gbm.send_time < 
DATETIME(
 "2012-12-16T22:12:38" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-07-15T01:40:50" )
and gbu.user_since <
DATETIME(
 "2003-07-16T01:40:50" )
;
 

{
	"requestID": "2950448e-0a36-41f9-95d8-76b95e1eb0e4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/38-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.354708787s",
		"executionTime": "3.35079623s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 97482
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2003-03-17T21:37:51" )
AND user.user_since < 
DATETIME(
 "2003-03-18T06:37:51" )
AND msg.send_time >=
DATETIME(
 "2003-09-05T18:15:05" )
AND msg.send_time <
DATETIME(
 "2003-09-06T18:15:05" )
GROUP BY user.id;
;
 

{
	"requestID": "a3da8c3d-a08b-4770-bfbf-6b16184b0922",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/39-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.592648347s",
		"executionTime": "5.58992623s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 181036
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2010-06-23T07:35:43" )
AND user.user_since < 
DATETIME(
 "2010-06-23T16:35:43" )
AND msg.send_time >=
DATETIME(
 "2004-05-18T18:57:38" )
AND msg.send_time <
DATETIME(
 "2004-05-19T18:57:38" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "270e14d8-6013-4b98-92e7-5b74dcbd2b0b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/40-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.936322281s",
		"executionTime": "4.934163145s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180906
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-11-28T14:17:27" )
and
gbu.user_since <
DATETIME(
 "2012-11-28T23:17:27" )
and
gbm.send_time >=
DATETIME(
 "2012-03-19T01:10:19" )
and
gbm.send_time <
DATETIME(
 "2012-03-20T01:10:19" )
;
 

{
	"requestID": "80ba0fcf-a585-480b-9daa-4be99657869f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/41-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.584000747s",
		"executionTime": "7.581598974s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252705
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-02-06T06:21:21" )
and gbm.send_time < 
DATETIME(
 "2013-02-06T15:21:21" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-07-26T02:23:08" )
and gbu.user_since <
DATETIME(
 "2005-07-27T02:23:08" )
;
 

{
	"requestID": "49950855-714f-4982-a5f2-eda229ce41c8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/42-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.324337587s",
		"executionTime": "4.321766846s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202086
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2012-10-15T06:16:52" )
AND user.user_since < 
DATETIME(
 "2012-10-15T15:16:52" )
AND msg.send_time >=
DATETIME(
 "2009-02-05T00:51:45" )
AND msg.send_time <
DATETIME(
 "2009-02-06T00:51:45" )
GROUP BY user.id;
;
 

{
	"requestID": "b4c2c0b2-87cd-488a-bda7-be88b2c024f0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/43-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.584551089s",
		"executionTime": "1.582746032s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 77268
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2008-05-07T01:56:13" )
AND user.user_since < 
DATETIME(
 "2008-05-07T10:56:13" )
AND msg.send_time >=
DATETIME(
 "2000-10-23T03:26:35" )
AND msg.send_time <
DATETIME(
 "2000-10-24T03:26:35" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "d2b0e8b5-953d-43a4-9168-4870e1a98d2c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/44-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.459809127s",
		"executionTime": "1.454986161s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 75712
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2000-10-06T19:25:40" )
AND cm.send_time <
DATETIME(
 "2000-10-07T04:25:40" )
;
 

{
	"requestID": "1dc5312d-0f39-409e-b88d-a8981cf447fd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/45-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.231140242s",
		"executionTime": "5.228994863s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30884
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2013-11-06T17:10:52" )
AND cm.send_time <
DATETIME(
 "2013-11-07T02:10:52" )
group by sentiment(cm.message_text);
 

{
	"requestID": "8c2eabd3-60c1-47ff-bbd3-cf06b605744a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/46-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.016643677s",
		"executionTime": "5.014484221s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30952
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("24185873") ;
 

{
	"requestID": "f65fbcbe-1ce9-4ba1-bc42-975b6a1b3b6b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/47-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "26.749156ms",
		"executionTime": "24.909729ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("47039005") AND user.id <= 
 int64("48039005") ;
 

{
	"requestID": "ab7dd25d-a4e7-4688-b223-2e6b061401f0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/48-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.985254385s",
		"executionTime": "9.983540502s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2010-05-11T09:37:36" )
AND user.user_since <= 
DATETIME(
 "2010-06-18T09:37:36" )
;
 

{
	"requestID": "3784f918-61c6-4b1d-b06e-286f02d0a176",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/49-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "13.405866322s",
		"executionTime": "13.404838098s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1275536
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2004-07-26T10:17:16" )
AND gbu.user_since <= 
DATETIME(
 "2004-09-02T10:17:16" )
;
 

{
	"requestID": "02239283-0d15-4c82-9b93-28eddbdf8407",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/50-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.934957879s",
		"executionTime": "8.93384401s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276496
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2003-07-22T12:56:42" )
AND gbu.user_since <= 
DATETIME(
 "2003-08-29T12:56:42" )
;
 

{
	"requestID": "c1181e7f-546f-4a02-9d9f-c65e03c27362",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/51-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.597746s",
		"executionTime": "4.595737448s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276928
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2007-09-21T20:53:26" )
AND cm.send_time <
DATETIME(
 "2007-10-06T20:53:26" );
 

{
	"requestID": "33824872-0c17-4386-93f8-366e50c80bbf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/52-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.842823283s",
		"executionTime": "18.840740657s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232846
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-04-17T04:09:07" )
AND cm.send_time <
DATETIME(
 "2006-05-02T04:09:07" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "2559d8cc-5e48-41ed-9da6-e2cbc054e1b5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/53-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "20.250550568s",
		"executionTime": "20.248378966s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1230660
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-09-27T15:31:18" )
AND cm.send_time <
DATETIME(
 "2000-10-12T15:31:18" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "396e183c-984f-45b9-9272-f3f75c9c1d12",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/54-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.912833798s",
		"executionTime": "10.910619538s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1231966
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 32.4485  92.0683 ,
 42.4485  92.0683 ,
 42.4485  102.0683 ,
 32.4485  102.0683 ,
 32.4485  92.0683 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "9d259384-32c2-4332-9f9a-6fa9b516dcb3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/55-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "102.574357354s",
		"executionTime": "102.57334592s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 32625204
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Surface" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "aaa8b71f-3fa8-481c-900a-446a0b570b6e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/56-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "128.274879291s",
		"executionTime": "128.273091792s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-12-19T19:36:50" )
and
gbu.user_since <
DATETIME(
 "2009-01-26T19:36:50" )
and
gbm.send_time >=
DATETIME(
 "2011-12-25T20:26:49" )
and
gbm.send_time <
DATETIME(
 "2011-12-26T20:26:49" )
;
 

{
	"requestID": "62a15efa-0f0b-4546-9a61-34ac0732f2b4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/57-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.131038663s",
		"executionTime": "9.129017505s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444828
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2012-07-13T18:21:37" )
and gbm.send_time < 
DATETIME(
 "2012-08-20T18:21:37" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-12-01T08:44:51" )
and gbu.user_since <
DATETIME(
 "2005-12-02T08:44:51" )
;
 

{
	"requestID": "f6eff754-fa78-4795-bf21-44cee0075714",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/58-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "82.293435676s",
		"executionTime": "82.291260383s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6415302
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2003-04-06T04:38:02" )
AND user.user_since < 
DATETIME(
 "2003-05-14T04:38:02" )
AND msg.send_time >=
DATETIME(
 "2010-09-20T15:43:07" )
AND msg.send_time <
DATETIME(
 "2010-09-21T15:43:07" )
GROUP BY user.id;
;
 

{
	"requestID": "e0f10fa3-9cc4-40b5-8215-9b8d35c2bca9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/59-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "22.204378133s",
		"executionTime": "22.202238091s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1445394
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2007-10-14T00:25:11" )
AND user.user_since < 
DATETIME(
 "2007-11-21T00:25:11" )
AND msg.send_time >=
DATETIME(
 "2002-01-09T11:06:08" )
AND msg.send_time <
DATETIME(
 "2002-01-10T11:06:08" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "10197b1b-57b6-40c0-a8bd-9dfce3b3705a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/60-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.919652969s",
		"executionTime": "4.914782721s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1447742
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-04-21T10:40:42" )
and
gbu.user_since <
DATETIME(
 "2007-05-29T10:40:42" )
and
gbm.send_time >=
DATETIME(
 "2010-10-03T03:11:05" )
and
gbm.send_time <
DATETIME(
 "2010-10-04T03:11:05" )
;
 

{
	"requestID": "82c8fcb7-328b-4caf-9580-3b931e1939e7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/61-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.8429863s",
		"executionTime": "1.840774262s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251832
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-11-21T12:07:43" )
and gbm.send_time < 
DATETIME(
 "2001-12-29T12:07:43" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2001-12-20T11:24:57" )
and gbu.user_since <
DATETIME(
 "2001-12-21T11:24:57" )
;
 

{
	"requestID": "c6602d14-27e7-4621-bf0c-8bde7305987f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/62-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.238253549s",
		"executionTime": "3.235718099s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 200460
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2005-11-22T03:03:01" )
AND user.user_since < 
DATETIME(
 "2005-12-30T03:03:01" )
AND msg.send_time >=
DATETIME(
 "2003-01-22T07:40:21" )
AND msg.send_time <
DATETIME(
 "2003-01-23T07:40:21" )
GROUP BY user.id;
;
 

{
	"requestID": "6ecb58e2-fcbc-4d79-bc56-e8e1e5a612ec",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/63-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "26.389543883s",
		"executionTime": "26.385968939s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7654576
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-08-01T02:36:47" )
AND user.user_since < 
DATETIME(
 "2007-09-08T02:36:47" )
AND msg.send_time >=
DATETIME(
 "2014-08-07T05:31:00" )
AND msg.send_time <
DATETIME(
 "2014-08-08T05:31:00" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "f56cdeb0-e7c9-4bd7-b3c9-5bb336981cc8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/64-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "17.569167942s",
		"executionTime": "17.566832441s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7681356
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2014-04-05T06:28:24" )
AND cm.send_time <
DATETIME(
 "2014-05-13T06:28:24" )
;
 

{
	"requestID": "19831006-9dec-43a3-aa62-dc837855b4ac",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/65-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "499.140798931s",
		"executionTime": "499.137379736s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3118942
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2014-02-24T05:42:04" )
AND cm.send_time <
DATETIME(
 "2014-04-03T05:42:04" )
group by sentiment(cm.message_text);
 

{
	"requestID": "c83c31d2-da6c-4765-b6dc-43992d24131d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/66-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "455.469256562s",
		"executionTime": "455.466683992s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3125470
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("24307466") ;
 

{
	"requestID": "31d41d90-ae6e-4399-b48a-6b7b206b1a49",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/67-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.932927ms",
		"executionTime": "23.100479ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("55026351") AND user.id <= 
 int64("55026451") ;
 

{
	"requestID": "41b41b20-b3c2-4687-8ac1-897fe7dc6d29",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/68-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "30.189743ms",
		"executionTime": "29.079841ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2009-06-18T12:45:24" )
AND user.user_since <= 
DATETIME(
 "2009-06-18T12:50:24" )
;
 

{
	"requestID": "5cc19b81-5c5c-4507-9548-2d45d84a4676",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/69-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.235299ms",
		"executionTime": "38.65501ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 106
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
 "2013-02-15T22:26:12" )
AND gbu.user_since <= 
DATETIME(
 "2013-02-15T22:31:12" )
;
 

{
	"requestID": "5d318a6a-2162-4a42-9b91-7dfe9c714997",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/70-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "43.777834ms",
		"executionTime": "42.256291ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 118
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
 "2011-02-13T14:11:23" )
AND gbu.user_since <= 
DATETIME(
 "2011-02-13T14:16:23" )
;
 

{
	"requestID": "94f1d081-67b1-4f26-9616-dff114c5113d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/71-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "46.277147ms",
		"executionTime": "44.509542ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 134
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2010-11-15T14:49:54" )
AND cm.send_time <
DATETIME(
 "2010-11-15T14:52:24" );
 

{
	"requestID": "65114418-79b2-484d-a189-f7cfcbf4001c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/72-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.196933ms",
		"executionTime": "40.538294ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2004-01-23T15:48:10" )
AND cm.send_time <
DATETIME(
 "2004-01-23T15:50:40" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "f05d5114-7a09-4fa2-9409-a54af1ea225e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/73-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "50.202269ms",
		"executionTime": "48.383366ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 146
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-07-16T16:57:25" )
AND cm.send_time <
DATETIME(
 "2000-07-16T16:59:55" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "9b7c47ee-cd80-422d-96f6-06c2ef1619f5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/74-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "58.983136ms",
		"executionTime": "57.066278ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 160
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 29.0636  68.9306 ,
 29.073600000000003  68.9306 ,
 29.073600000000003  68.9406 ,
 29.0636  68.9406 ,
 29.0636  68.9306 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "6216424b-371f-4bdd-98e3-7cfef890a617",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/75-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "35.622981ms",
		"executionTime": "34.516683ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 66
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
	"requestID": "78871e0e-11d0-439f-a6fb-4221092c69f0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/76-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "133.211067087s",
		"executionTime": "133.209379509s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-05-15T14:14:12" )
and
gbu.user_since <
DATETIME(
 "2008-05-15T14:19:12" )
and
gbm.send_time >=
DATETIME(
 "2000-06-19T01:28:52" )
and
gbm.send_time <
DATETIME(
 "2000-06-20T01:28:52" )
;
 

{
	"requestID": "650d4cc2-7bb6-4088-87e7-41406da3b820",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/77-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.369257157s",
		"executionTime": "4.367203029s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167404
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2000-02-15T05:18:27" )
and gbm.send_time < 
DATETIME(
 "2000-02-15T05:23:27" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-08-22T22:53:51" )
and gbu.user_since <
DATETIME(
 "2003-08-23T22:53:51" )
;
 

{
	"requestID": "9d1339e6-1b53-4e6c-9a98-756ebe1aab5c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/78-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "410.414695ms",
		"executionTime": "408.322489ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34514
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
 "2014-06-10T09:01:46" )
AND user.user_since < 
DATETIME(
 "2014-06-10T09:06:46" )
AND msg.send_time >=
DATETIME(
 "2008-02-20T09:24:43" )
AND msg.send_time <
DATETIME(
 "2008-02-21T09:24:43" )
GROUP BY user.id;
;
 

{
	"requestID": "ed9f676d-138a-49f5-a8bc-58aa19f11332",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/79-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.66765454s",
		"executionTime": "4.665423009s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168418
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
 "2006-04-22T12:29:35" )
AND user.user_since < 
DATETIME(
 "2006-04-22T12:34:35" )
AND msg.send_time >=
DATETIME(
 "2013-12-18T01:49:47" )
AND msg.send_time <
DATETIME(
 "2013-12-19T01:49:47" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "fb286727-6efb-4db4-971a-7a5d7602c189",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/80-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.13351043s",
		"executionTime": "4.131398295s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168172
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-09-28T06:57:06" )
and
gbu.user_since <
DATETIME(
 "2007-09-28T07:02:06" )
and
gbm.send_time >=
DATETIME(
 "2010-11-02T15:52:45" )
and
gbm.send_time <
DATETIME(
 "2010-11-03T15:52:45" )
;
 

{
	"requestID": "885fd99f-8bee-4ca8-ba34-6e7c7ba63b41",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/81-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.861337951s",
		"executionTime": "5.859656162s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252249
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2012-09-12T02:05:42" )
and gbm.send_time < 
DATETIME(
 "2012-09-12T02:10:42" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2006-05-08T03:23:13" )
and gbu.user_since <
DATETIME(
 "2006-05-09T03:23:13" )
;
 

{
	"requestID": "fe600b0a-67ce-44e2-b8a7-b614d8a84858",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/82-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.03086682s",
		"executionTime": "2.028834699s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 205258
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-05-21T14:23:54" )
AND user.user_since < 
DATETIME(
 "2013-05-21T14:28:54" )
AND msg.send_time >=
DATETIME(
 "2000-11-26T12:46:16" )
AND msg.send_time <
DATETIME(
 "2000-11-27T12:46:16" )
GROUP BY user.id;
;
 

{
	"requestID": "93213603-1686-43ea-9cd2-a1f766d519a3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/83-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "73.669757ms",
		"executionTime": "71.526992ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 740
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2014-08-23T16:28:41" )
AND user.user_since < 
DATETIME(
 "2014-08-23T16:33:41" )
AND msg.send_time >=
DATETIME(
 "2014-07-13T07:52:51" )
AND msg.send_time <
DATETIME(
 "2014-07-14T07:52:51" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "884738c9-fb11-4089-85e4-8c02bdfb796a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/84-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "73.171097ms",
		"executionTime": "70.865268ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 692
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2011-06-09T20:04:56" )
AND cm.send_time <
DATETIME(
 "2011-06-09T20:09:56" )
;
 

{
	"requestID": "6187fe3b-f3d1-4dd3-b905-d01cdb9bfe75",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/85-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "615.440396ms",
		"executionTime": "613.600294ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 216
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2001-11-11T16:27:30" )
AND cm.send_time <
DATETIME(
 "2001-11-11T16:32:30" )
group by sentiment(cm.message_text);
 

{
	"requestID": "562af9ac-12dd-470e-94e9-0223cbd248bf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/86-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "590.298123ms",
		"executionTime": "587.857053ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 318
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("69950919") ;
 

{
	"requestID": "873c8309-0e10-40b9-9c0c-38793442b533",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/87-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "25.271032ms",
		"executionTime": "22.632995ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("30273229") AND user.id <= 
 int64("30283229") ;
 

{
	"requestID": "66ee1c00-e578-4d11-9f73-248eb59658bd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/88-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "139.759604ms",
		"executionTime": "138.641333ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2006-09-14T23:09:06" )
AND user.user_since <= 
DATETIME(
 "2006-09-15T08:09:06" )
;
 

{
	"requestID": "f31e127d-d83c-4813-82df-c8f3304d4a07",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/89-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "186.61017ms",
		"executionTime": "184.858653ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12580
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2012-09-26T09:15:20" )
AND gbu.user_since <= 
DATETIME(
 "2012-09-26T18:15:20" )
;
 

{
	"requestID": "f07f07ae-ae5d-4fce-9cf9-8c84d4df7438",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/90-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "211.129204ms",
		"executionTime": "209.879815ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12660
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2006-04-21T04:38:20" )
AND gbu.user_since <= 
DATETIME(
 "2006-04-21T13:38:20" )
;
 

{
	"requestID": "f9c1e894-e71f-4f14-9ee4-b4b7c1929644",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/91-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "160.632349ms",
		"executionTime": "158.575259ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12776
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2014-08-10T03:53:34" )
AND cm.send_time <
DATETIME(
 "2014-08-10T07:38:34" );
 

{
	"requestID": "b5493c31-8598-48d3-aa7d-c5ade837195f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/92-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "104.592651ms",
		"executionTime": "103.423176ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12608
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-01-13T02:25:24" )
AND cm.send_time <
DATETIME(
 "2002-01-13T06:10:24" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "d19e366c-2a76-41e3-94cb-bf9a02c125d6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/93-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "137.924488ms",
		"executionTime": "135.955718ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12936
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2014-02-01T20:32:27" )
AND cm.send_time <
DATETIME(
 "2014-02-02T00:17:27" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "66dab8cc-9796-45e5-9d2f-c42411b3712b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/94-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "138.545668ms",
		"executionTime": "136.528327ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12622
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 37.5739  93.0351 ,
 37.6739  93.0351 ,
 37.6739  93.1351 ,
 37.5739  93.1351 ,
 37.5739  93.0351 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "4c282eb0-a3ed-4fd1-8df3-85d5895800f3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/95-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "78.710937ms",
		"executionTime": "74.578569ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5452
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Kindle" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "2f7e20bb-cb85-4b5f-abd7-70d474b0d5f1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/96-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "132.148218794s",
		"executionTime": "132.146536991s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2011-11-15T05:28:36" )
and
gbu.user_since <
DATETIME(
 "2011-11-15T14:28:36" )
and
gbm.send_time >=
DATETIME(
 "2005-07-03T11:55:19" )
and
gbm.send_time <
DATETIME(
 "2005-07-04T11:55:19" )
;
 

{
	"requestID": "04a00792-d23d-4b0c-982d-876076017001",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/97-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.84556603s",
		"executionTime": "4.843775383s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180794
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-05-24T14:29:12" )
and gbm.send_time < 
DATETIME(
 "2010-05-24T23:29:12" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-02-17T12:33:00" )
and gbu.user_since <
DATETIME(
 "2003-02-18T12:33:00" )
;
 

{
	"requestID": "f5dca2bb-eb98-473e-99b9-a0978868d33d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/98-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.180246259s",
		"executionTime": "2.17830269s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96934
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2001-06-08T01:24:06" )
AND user.user_since < 
DATETIME(
 "2001-06-08T10:24:06" )
AND msg.send_time >=
DATETIME(
 "2009-03-17T14:37:20" )
AND msg.send_time <
DATETIME(
 "2009-03-18T14:37:20" )
GROUP BY user.id;
;
 

{
	"requestID": "d2e5ad2f-1c3e-4311-8f95-8201fccfc142",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/99-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.576316119s",
		"executionTime": "4.574443222s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180216
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2007-11-15T03:34:01" )
AND user.user_since < 
DATETIME(
 "2007-11-15T12:34:01" )
AND msg.send_time >=
DATETIME(
 "2012-04-24T17:12:14" )
AND msg.send_time <
DATETIME(
 "2012-04-25T17:12:14" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "46f8e0b7-c117-4efb-8f46-e02c14e4afd5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/100-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.169684645s",
		"executionTime": "4.167666169s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180598
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-10-17T00:12:03" )
and
gbu.user_since <
DATETIME(
 "2001-10-17T09:12:03" )
and
gbm.send_time >=
DATETIME(
 "2001-09-22T07:13:10" )
and
gbm.send_time <
DATETIME(
 "2001-09-23T07:13:10" )
;
 

{
	"requestID": "85eae1c3-7e9a-4afd-bde6-fa9c17a6a55b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/101-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.13118543s",
		"executionTime": "7.128456542s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251463
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2011-05-06T10:09:00" )
and gbm.send_time < 
DATETIME(
 "2011-05-06T19:09:00" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2002-07-20T14:41:30" )
and gbu.user_since <
DATETIME(
 "2002-07-21T14:41:30" )
;
 

{
	"requestID": "a6627926-8201-4845-8349-1fe5eacf5954",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/102-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.304467686s",
		"executionTime": "3.302402925s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 203162
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2002-05-10T22:33:23" )
AND user.user_since < 
DATETIME(
 "2002-05-11T07:33:23" )
AND msg.send_time >=
DATETIME(
 "2013-05-19T15:34:12" )
AND msg.send_time <
DATETIME(
 "2013-05-20T15:34:12" )
GROUP BY user.id;
;
 

{
	"requestID": "4204ae18-a1e3-415e-8c5d-eb99e00753ed",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/103-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.328358823s",
		"executionTime": "1.327110355s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76596
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2003-07-16T03:25:40" )
AND user.user_since < 
DATETIME(
 "2003-07-16T12:25:40" )
AND msg.send_time >=
DATETIME(
 "2001-10-25T01:44:32" )
AND msg.send_time <
DATETIME(
 "2001-10-26T01:44:32" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "6e653a78-a3ae-48a7-ae3c-aa3c9c92409b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/104-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.24684917s",
		"executionTime": "1.244574532s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 74598
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-07-19T16:09:12" )
AND cm.send_time <
DATETIME(
 "2009-07-20T01:09:12" )
;
 

{
	"requestID": "24a5050d-37c6-44da-9170-4ae1d320c550",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/105-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.728136292s",
		"executionTime": "4.725957147s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30462
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2013-11-22T06:55:18" )
AND cm.send_time <
DATETIME(
 "2013-11-22T15:55:18" )
group by sentiment(cm.message_text);
 

{
	"requestID": "3d376ad8-4f4e-40d2-8c3d-2ac2c14ce852",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/106-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.004275683s",
		"executionTime": "5.002472869s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30946
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("84563663") ;
 

{
	"requestID": "58280fc8-9e95-469c-ad81-2a2e2d310add",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/107-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.935397ms",
		"executionTime": "23.15779ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("76677658") AND user.id <= 
 int64("77677658") ;
 

{
	"requestID": "c5682477-498f-4960-9a39-b49f2ce327a5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/108-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.9318091s",
		"executionTime": "10.930378741s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2002-11-18T10:04:25" )
AND user.user_since <= 
DATETIME(
 "2002-12-26T10:04:25" )
;
 

{
	"requestID": "2fba0657-b7f6-44ed-acd8-7c776cdda348",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/109-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.548457693s",
		"executionTime": "16.546879632s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1278294
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2003-11-16T00:18:01" )
AND gbu.user_since <= 
DATETIME(
 "2003-12-24T00:18:01" )
;
 

{
	"requestID": "08f2ed96-ec06-4744-811e-bfd802240d49",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/110-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.513357018s",
		"executionTime": "8.511457773s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1278272
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2007-04-17T00:31:41" )
AND gbu.user_since <= 
DATETIME(
 "2007-05-25T00:31:41" )
;
 

{
	"requestID": "408ddbbb-b12d-46de-9a15-9779ce3522d4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/111-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.233970823s",
		"executionTime": "4.232011176s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276714
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-03-05T09:21:41" )
AND cm.send_time <
DATETIME(
 "2002-03-20T09:21:41" );
 

{
	"requestID": "ec9f14bf-4bfb-4771-9bfe-c79824cb4028",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/112-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.952190005s",
		"executionTime": "3.950691537s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232488
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-09-01T20:38:50" )
AND cm.send_time <
DATETIME(
 "2005-09-16T20:38:50" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "059468e5-551c-4aee-9e7b-3b71ad81204d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/113-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.765757488s",
		"executionTime": "5.763884945s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1231892
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-09-08T19:10:01" )
AND cm.send_time <
DATETIME(
 "2001-09-23T19:10:01" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "bf864ede-0768-4367-b9f5-c4e3bd256281",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/114-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.924907188s",
		"executionTime": "4.922993352s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233730
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 26.2848  82.4442 ,
 36.284800000000004  82.4442 ,
 36.284800000000004  92.4442 ,
 26.2848  92.4442 ,
 26.2848  82.4442 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "f283c717-28b5-4f51-8ae5-050382e664f5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/115-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "150.647571615s",
		"executionTime": "150.646700802s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 54995088
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Nexus" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "52afa34a-a57a-4aef-aad7-49eaf53c3f6c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/116-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "124.209063308s",
		"executionTime": "124.207436182s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2000-10-21T20:54:45" )
and
gbu.user_since <
DATETIME(
 "2000-11-28T20:54:45" )
and
gbm.send_time >=
DATETIME(
 "2004-01-05T13:52:07" )
and
gbm.send_time <
DATETIME(
 "2004-01-06T13:52:07" )
;
 

{
	"requestID": "baf62888-592b-4622-8805-bbcfc48d90af",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/117-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.180311665s",
		"executionTime": "8.178667444s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446876
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-11-07T09:52:39" )
and gbm.send_time < 
DATETIME(
 "2013-12-15T09:52:39" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2009-12-24T22:13:48" )
and gbu.user_since <
DATETIME(
 "2009-12-25T22:13:48" )
;
 

{
	"requestID": "e586f74b-89ae-4d4e-b733-aad3b474e906",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/118-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "66.880396668s",
		"executionTime": "66.878397023s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6416836
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2011-12-08T06:19:05" )
AND user.user_since < 
DATETIME(
 "2012-01-15T06:19:05" )
AND msg.send_time >=
DATETIME(
 "2011-11-12T01:54:11" )
AND msg.send_time <
DATETIME(
 "2011-11-13T01:54:11" )
GROUP BY user.id;
;
 

{
	"requestID": "d80ce2d2-f15e-4080-a6af-c15d940c5927",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/119-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.21569798s",
		"executionTime": "4.211745867s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444762
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2000-12-08T17:07:00" )
AND user.user_since < 
DATETIME(
 "2001-01-15T17:07:00" )
AND msg.send_time >=
DATETIME(
 "2008-05-13T06:36:10" )
AND msg.send_time <
DATETIME(
 "2008-05-14T06:36:10" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "faa220ef-9be1-4412-961b-b9dc902637f7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/120-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.176829754s",
		"executionTime": "3.174918819s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1445198
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-03-05T20:21:55" )
and
gbu.user_since <
DATETIME(
 "2012-04-12T20:21:55" )
and
gbm.send_time >=
DATETIME(
 "2005-10-18T19:28:51" )
and
gbm.send_time <
DATETIME(
 "2005-10-19T19:28:51" )
;
 

{
	"requestID": "f7a035dd-873a-47e8-a29e-fd303e153b4b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/121-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.107619177s",
		"executionTime": "1.105671715s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252369
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2003-08-11T00:27:45" )
and gbm.send_time < 
DATETIME(
 "2003-09-18T00:27:45" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-12-05T04:28:05" )
and gbu.user_since <
DATETIME(
 "2003-12-06T04:28:05" )
;
 

{
	"requestID": "4f621633-b323-42f2-ad3e-7f5684ef7107",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/122-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.806537811s",
		"executionTime": "1.8049075s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 201894
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2014-04-08T07:29:10" )
AND user.user_since < 
DATETIME(
 "2014-05-16T07:29:10" )
AND msg.send_time >=
DATETIME(
 "2002-03-09T14:54:45" )
AND msg.send_time <
DATETIME(
 "2002-03-10T14:54:45" )
GROUP BY user.id;
;
 

{
	"requestID": "3c4024cb-48cb-44fd-acf4-7df63fca60b5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/123-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.492938448s",
		"executionTime": "19.490654049s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7654486
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2006-01-09T07:39:48" )
AND user.user_since < 
DATETIME(
 "2006-02-16T07:39:48" )
AND msg.send_time >=
DATETIME(
 "2007-09-23T13:23:32" )
AND msg.send_time <
DATETIME(
 "2007-09-24T13:23:32" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "de8bbb89-15b8-4ab1-ba3f-3dd79f41a384",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/124-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.700188454s",
		"executionTime": "16.698469513s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7679174
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2007-04-20T17:37:24" )
AND cm.send_time <
DATETIME(
 "2007-05-28T17:37:24" )
;
 

{
	"requestID": "1c4449ed-714a-4636-82f3-0f8daa1649b2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/125-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "482.820018698s",
		"executionTime": "482.818021652s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3123156
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2005-11-12T06:41:41" )
AND cm.send_time <
DATETIME(
 "2005-12-20T06:41:41" )
group by sentiment(cm.message_text);
 

{
	"requestID": "c361b862-1c5d-486e-bd91-240b70f8d021",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/126-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "443.237832727s",
		"executionTime": "443.235794523s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3121648
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("7524944") ;
 

{
	"requestID": "14323901-734c-4e7e-aa41-805318aa9793",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/127-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "25.386718ms",
		"executionTime": "23.544484ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("27039678") AND user.id <= 
 int64("27039778") ;
 

{
	"requestID": "a4903c25-12b8-4df6-8f9c-d505737a5423",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/128-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "29.130112ms",
		"executionTime": "27.316156ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2009-03-14T10:56:27" )
AND user.user_since <= 
DATETIME(
 "2009-03-14T11:01:27" )
;
 

{
	"requestID": "89f7d085-51ae-4d3a-a7c7-752d48285ec9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/129-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.939659ms",
		"executionTime": "41.377484ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 120
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
 "2012-05-19T05:30:09" )
AND gbu.user_since <= 
DATETIME(
 "2012-05-19T05:35:09" )
;
 

{
	"requestID": "323a0c35-3f6b-4226-b317-ae0fdb83bff7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/130-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "57.902954ms",
		"executionTime": "56.693988ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 114
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
 "2010-09-02T00:32:31" )
AND gbu.user_since <= 
DATETIME(
 "2010-09-02T00:37:31" )
;
 

{
	"requestID": "0d9da111-c585-4076-b013-612091b8ffa4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/131-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "47.885561ms",
		"executionTime": "44.868714ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 134
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2004-02-08T19:54:50" )
AND cm.send_time <
DATETIME(
 "2004-02-08T19:57:20" );
 

{
	"requestID": "3ddcdbcd-f5d8-4396-aef1-505f971f75b2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/132-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "38.46426ms",
		"executionTime": "37.481884ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 130
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-10-28T09:40:47" )
AND cm.send_time <
DATETIME(
 "2002-10-28T09:43:17" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "e87c517e-8330-4834-9f1e-233865539284",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/133-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "49.238788ms",
		"executionTime": "47.385401ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 140
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-05-11T09:15:35" )
AND cm.send_time <
DATETIME(
 "2011-05-11T09:18:05" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "08a4e580-ee5c-4b42-8ccb-e378145a7ebf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/134-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "52.579953ms",
		"executionTime": "50.904655ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 152
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 26.605  79.4976 ,
 26.615000000000002  79.4976 ,
 26.615000000000002  79.50760000000001 ,
 26.605  79.50760000000001 ,
 26.605  79.4976 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "b5029165-8808-4eb5-a19c-3c2d567ea16c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/135-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "39.264602ms",
		"executionTime": "37.792069ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 46
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
	"requestID": "f78320f0-fa99-4abe-b871-6bbe447009fa",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/136-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "132.408451527s",
		"executionTime": "132.4071244s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-08-22T17:19:56" )
and
gbu.user_since <
DATETIME(
 "2008-08-22T17:24:56" )
and
gbm.send_time >=
DATETIME(
 "2010-06-03T03:19:16" )
and
gbm.send_time <
DATETIME(
 "2010-06-04T03:19:16" )
;
 

{
	"requestID": "c5efeb01-c039-48dc-9545-9d7fae48ebf4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/137-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.491577768s",
		"executionTime": "3.489248111s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168432
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2005-11-08T10:31:22" )
and gbm.send_time < 
DATETIME(
 "2005-11-08T10:36:22" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2002-10-27T19:26:43" )
and gbu.user_since <
DATETIME(
 "2002-10-28T19:26:43" )
;
 

{
	"requestID": "bab482e1-4ae3-473b-9f4e-1da945003bde",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/138-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "962.428253ms",
		"executionTime": "960.624531ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34330
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
 "2001-10-24T13:51:36" )
AND user.user_since < 
DATETIME(
 "2001-10-24T13:56:36" )
AND msg.send_time >=
DATETIME(
 "2009-06-22T08:26:17" )
AND msg.send_time <
DATETIME(
 "2009-06-23T08:26:17" )
GROUP BY user.id;
;
 

{
	"requestID": "7e2a7685-e53c-46b0-b4ea-d4466e1a13d6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/139-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.463441397s",
		"executionTime": "3.460707444s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168410
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
 "2011-01-07T11:16:14" )
AND user.user_since < 
DATETIME(
 "2011-01-07T11:21:14" )
AND msg.send_time >=
DATETIME(
 "2011-07-15T03:38:13" )
AND msg.send_time <
DATETIME(
 "2011-07-16T03:38:13" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "3d2fe67f-4150-490d-ab8d-874b873ee14d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/140-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.996585831s",
		"executionTime": "2.995039762s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167270
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-10-20T01:35:29" )
and
gbu.user_since <
DATETIME(
 "2008-10-20T01:40:29" )
and
gbm.send_time >=
DATETIME(
 "2001-05-11T01:44:37" )
and
gbm.send_time <
DATETIME(
 "2001-05-12T01:44:37" )
;
 

{
	"requestID": "2740fdc9-7977-496d-9417-4ad1eb819483",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/141-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.94992446s",
		"executionTime": "8.948129492s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251652
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-10-28T06:48:13" )
and gbm.send_time < 
DATETIME(
 "2010-10-28T06:53:13" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2001-10-07T23:30:20" )
and gbu.user_since <
DATETIME(
 "2001-10-08T23:30:20" )
;
 

{
	"requestID": "e9ca07a0-ac9d-483d-9ac8-075dfc96c76f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/142-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.512204756s",
		"executionTime": "2.510259419s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 199504
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2005-08-01T09:25:04" )
AND user.user_since < 
DATETIME(
 "2005-08-01T09:30:04" )
AND msg.send_time >=
DATETIME(
 "2001-05-10T03:10:12" )
AND msg.send_time <
DATETIME(
 "2001-05-11T03:10:12" )
GROUP BY user.id;
;
 

{
	"requestID": "ee157b43-956b-4a95-ab8a-7e541cbdd7e6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/143-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "79.720431ms",
		"executionTime": "77.65816ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 662
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-06-05T03:55:53" )
AND user.user_since < 
DATETIME(
 "2013-06-05T04:00:53" )
AND msg.send_time >=
DATETIME(
 "2007-06-09T08:25:04" )
AND msg.send_time <
DATETIME(
 "2007-06-10T08:25:04" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "f154db57-0de0-4b8d-95a8-9c943c85eba6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/144-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "75.094641ms",
		"executionTime": "73.899846ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 678
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2000-05-19T14:41:12" )
AND cm.send_time <
DATETIME(
 "2000-05-19T14:46:12" )
;
 

{
	"requestID": "a39ece1e-b6da-4f43-ad55-192baf9311fe",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/145-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "611.112977ms",
		"executionTime": "609.416614ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 250
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2004-05-23T21:38:34" )
AND cm.send_time <
DATETIME(
 "2004-05-23T21:43:34" )
group by sentiment(cm.message_text);
 

{
	"requestID": "aeb70a59-968b-48a8-8d23-57aece4b60c5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/146-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "626.059249ms",
		"executionTime": "624.357805ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 310
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("60737073") ;
 

{
	"requestID": "3897c13f-f94f-43ac-bb28-8315cc4b884a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/147-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "23.421336ms",
		"executionTime": "21.219062ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("11562100") AND user.id <= 
 int64("11572100") ;
 

{
	"requestID": "f0425ab4-7d35-470b-a1a7-08de3e83d63e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/148-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "157.065763ms",
		"executionTime": "156.021914ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2002-05-25T06:36:45" )
AND user.user_since <= 
DATETIME(
 "2002-05-25T15:36:45" )
;
 

{
	"requestID": "7aa5fb7e-0859-46a0-8fb9-5e3831572a6e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/149-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "481.619209ms",
		"executionTime": "479.933279ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12564
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2012-09-22T10:06:13" )
AND gbu.user_since <= 
DATETIME(
 "2012-09-22T19:06:13" )
;
 

{
	"requestID": "c9cc6cf0-f510-4379-be20-8be9d2b3b121",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/150-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "466.724676ms",
		"executionTime": "465.310917ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12590
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2004-03-23T03:49:24" )
AND gbu.user_since <= 
DATETIME(
 "2004-03-23T12:49:24" )
;
 

{
	"requestID": "dc11bb07-3741-48b2-b4b6-91db427a1c66",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/151-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "432.210735ms",
		"executionTime": "430.685748ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12798
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-11-22T01:29:22" )
AND cm.send_time <
DATETIME(
 "2006-11-22T05:14:22" );
 

{
	"requestID": "056cc005-319a-49ee-97be-f283f2c18188",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/152-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "108.219705ms",
		"executionTime": "106.873564ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12708
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-12-10T11:53:13" )
AND cm.send_time <
DATETIME(
 "2000-12-10T15:38:13" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "72bd4f2c-428d-4184-811b-96730c15068f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/153-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "138.782211ms",
		"executionTime": "137.166375ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12822
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2009-05-11T21:47:26" )
AND cm.send_time <
DATETIME(
 "2009-05-12T01:32:26" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "b7f36a85-33fd-4139-b652-213c7bb22704",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/154-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "133.34649ms",
		"executionTime": "131.868089ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12948
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 44.896  87.6701 ,
 44.996  87.6701 ,
 44.996  87.7701 ,
 44.896  87.7701 ,
 44.896  87.6701 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "1c710618-b926-4835-8873-b5d9c80cf918",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/155-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "85.537862ms",
		"executionTime": "84.115763ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5552
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Kindle" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "4ac30406-c744-4ae1-ac1a-c1e98c8d8a48",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/156-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.923890593s",
		"executionTime": "129.922611547s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-04-18T18:50:17" )
and
gbu.user_since <
DATETIME(
 "2007-04-19T03:50:17" )
and
gbm.send_time >=
DATETIME(
 "2002-04-28T01:15:10" )
and
gbm.send_time <
DATETIME(
 "2002-04-29T01:15:10" )
;
 

{
	"requestID": "59320052-d0fe-480a-abfb-0a4e84f25875",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/157-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.839173346s",
		"executionTime": "3.837085872s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180818
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2007-07-12T09:11:09" )
and gbm.send_time < 
DATETIME(
 "2007-07-12T18:11:09" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-06-27T06:38:08" )
and gbu.user_since <
DATETIME(
 "2003-06-28T06:38:08" )
;
 

{
	"requestID": "68ff6339-d0d4-4c9a-be21-8d4918062a36",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/158-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.579672846s",
		"executionTime": "2.577962208s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 97028
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2001-01-13T23:04:11" )
AND user.user_since < 
DATETIME(
 "2001-01-14T08:04:11" )
AND msg.send_time >=
DATETIME(
 "2001-11-05T05:30:16" )
AND msg.send_time <
DATETIME(
 "2001-11-06T05:30:16" )
GROUP BY user.id;
;
 

{
	"requestID": "045dc373-d5b6-409c-b823-1259cb919d6e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/159-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.846741316s",
		"executionTime": "3.845126023s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180602
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2004-12-17T00:23:04" )
AND user.user_since < 
DATETIME(
 "2004-12-17T09:23:04" )
AND msg.send_time >=
DATETIME(
 "2008-01-10T18:06:11" )
AND msg.send_time <
DATETIME(
 "2008-01-11T18:06:11" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "1e8e0e2c-cf73-4b1b-ba7f-cbc22bc515aa",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/160-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.799713794s",
		"executionTime": "3.798546204s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180676
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2014-07-19T00:45:29" )
and
gbu.user_since <
DATETIME(
 "2014-07-19T09:45:29" )
and
gbm.send_time >=
DATETIME(
 "2011-01-12T02:09:03" )
and
gbm.send_time <
DATETIME(
 "2011-01-13T02:09:03" )
;
 

{
	"requestID": "fe97d84b-a8c6-4fe2-b22d-59884a0c708b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/161-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.435597384s",
		"executionTime": "6.433958517s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251457
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-04-10T02:36:08" )
and gbm.send_time < 
DATETIME(
 "2010-04-10T11:36:08" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-10-03T23:48:55" )
and gbu.user_since <
DATETIME(
 "2003-10-04T23:48:55" )
;
 

{
	"requestID": "fca0087f-18ed-4c1d-aee4-6475f1e97f9d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/162-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.808960957s",
		"executionTime": "2.806922754s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 205302
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-04-06T03:21:37" )
AND user.user_since < 
DATETIME(
 "2013-04-06T12:21:37" )
AND msg.send_time >=
DATETIME(
 "2000-11-17T12:05:33" )
AND msg.send_time <
DATETIME(
 "2000-11-18T12:05:33" )
GROUP BY user.id;
;
 

{
	"requestID": "d2c0b8f5-6d80-4811-a92e-7487d1918e56",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/163-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.121899181s",
		"executionTime": "1.120121801s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 77514
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2011-03-15T19:26:51" )
AND user.user_since < 
DATETIME(
 "2011-03-16T04:26:51" )
AND msg.send_time >=
DATETIME(
 "2005-03-11T23:08:55" )
AND msg.send_time <
DATETIME(
 "2005-03-12T23:08:55" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "c496d093-adc8-44b9-98db-174e571a400a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/164-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.045861918s",
		"executionTime": "1.044144087s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76744
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2003-06-10T04:39:31" )
AND cm.send_time <
DATETIME(
 "2003-06-10T13:39:31" )
;
 

{
	"requestID": "27d581b0-d159-48c9-8b20-54004751ac08",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/165-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.99204209s",
		"executionTime": "4.990198474s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30876
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2011-04-05T22:30:43" )
AND cm.send_time <
DATETIME(
 "2011-04-06T07:30:43" )
group by sentiment(cm.message_text);
 

{
	"requestID": "420c6d38-6cc4-45ae-b2fe-0246e9ce7531",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/166-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.863938658s",
		"executionTime": "4.862498346s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31142
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("89173872") ;
 

{
	"requestID": "9e551164-13ff-4448-8661-b00e0975a176",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/167-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "22.723048ms",
		"executionTime": "21.202312ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("22023390") AND user.id <= 
 int64("23023390") ;
 

{
	"requestID": "939df6f2-5607-46da-a394-da0d47ec5aca",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/168-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.560740669s",
		"executionTime": "10.559512212s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2006-07-06T08:11:52" )
AND user.user_since <= 
DATETIME(
 "2006-08-13T08:11:52" )
;
 

{
	"requestID": "f09749e2-d932-4ed9-b6e2-91b5fa86f250",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/169-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.785622686s",
		"executionTime": "11.784679201s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1283518
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2009-02-09T01:54:02" )
AND gbu.user_since <= 
DATETIME(
 "2009-03-19T01:54:02" )
;
 

{
	"requestID": "bec13bc6-b36b-44f9-8f35-1d4dc85070dd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/170-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.034088896s",
		"executionTime": "8.032968766s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1278672
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2007-07-28T00:32:19" )
AND gbu.user_since <= 
DATETIME(
 "2007-09-04T00:32:19" )
;
 

{
	"requestID": "93427fed-54a3-4efd-a774-84e32be684a1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/171-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.248707742s",
		"executionTime": "4.247357223s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1277554
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2014-05-10T15:56:46" )
AND cm.send_time <
DATETIME(
 "2014-05-25T15:56:46" );
 

{
	"requestID": "514769b4-76c1-4fd2-b873-12e248612e8a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/172-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.762093389s",
		"executionTime": "3.760738296s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1229202
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-02-28T20:25:42" )
AND cm.send_time <
DATETIME(
 "2012-03-14T20:25:42" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "1fa7daa4-9629-46c9-a76c-7dfbf2c027a9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/173-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.603508361s",
		"executionTime": "5.601742642s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1230422
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-06-25T09:33:29" )
AND cm.send_time <
DATETIME(
 "2001-07-10T09:33:29" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "d54344ea-e65a-4459-bf15-75fa7cfb2f9e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/174-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.829593342s",
		"executionTime": "4.8278645s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1234294
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 35.4659  86.1673 ,
 45.4659  86.1673 ,
 45.4659  96.1673 ,
 35.4659  96.1673 ,
 35.4659  86.1673 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "b6f59931-2aef-4bab-9853-d5e7474dd827",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/175-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "142.05948559s",
		"executionTime": "142.058085033s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 55001320
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Nexus" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "038d059b-7404-4ef4-90cc-70b013f2deb7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/176-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "120.322101253s",
		"executionTime": "120.321238786s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2014-06-02T05:33:29" )
and
gbu.user_since <
DATETIME(
 "2014-07-10T05:33:29" )
and
gbm.send_time >=
DATETIME(
 "2003-10-26T05:57:14" )
and
gbm.send_time <
DATETIME(
 "2003-10-27T05:57:14" )
;
 

{
	"requestID": "9ad95f8b-9e14-4583-a857-a69921aa5e41",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/177-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.394231465s",
		"executionTime": "7.392636492s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444226
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-05-22T06:41:32" )
and gbm.send_time < 
DATETIME(
 "2001-06-29T06:41:32" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2012-06-08T02:24:29" )
and gbu.user_since <
DATETIME(
 "2012-06-09T02:24:29" )
;
 

{
	"requestID": "4489c5f2-dda8-4ec8-bf8c-eb4606c297ce",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/178-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.266518555s",
		"executionTime": "60.264839427s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6425082
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2011-10-25T06:49:16" )
AND user.user_since < 
DATETIME(
 "2011-12-02T06:49:16" )
AND msg.send_time >=
DATETIME(
 "2014-07-08T14:27:15" )
AND msg.send_time <
DATETIME(
 "2014-07-09T14:27:15" )
GROUP BY user.id;
;
 

{
	"requestID": "e4e8622d-8c71-4ab1-863c-0e90663fc1f2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/179-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.000008879s",
		"executionTime": "5.998261134s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1442352
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2009-09-09T09:28:35" )
AND user.user_since < 
DATETIME(
 "2009-10-17T09:28:35" )
AND msg.send_time >=
DATETIME(
 "2004-11-06T15:52:42" )
AND msg.send_time <
DATETIME(
 "2004-11-07T15:52:42" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "76f23c1d-e020-412f-908e-84814e1a6f27",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/180-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.08330286s",
		"executionTime": "3.081605258s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446926
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-11-10T03:49:05" )
and
gbu.user_since <
DATETIME(
 "2004-12-18T03:49:05" )
and
gbm.send_time >=
DATETIME(
 "2011-02-03T03:39:03" )
and
gbm.send_time <
DATETIME(
 "2011-02-04T03:39:03" )
;
 

{
	"requestID": "50af1850-1fb8-4d95-9764-bda14cc050d0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/181-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "938.505301ms",
		"executionTime": "936.640754ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252249
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2007-07-22T10:50:15" )
and gbm.send_time < 
DATETIME(
 "2007-08-29T10:50:15" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2007-08-17T10:14:03" )
and gbu.user_since <
DATETIME(
 "2007-08-18T10:14:03" )
;
 

{
	"requestID": "5d571ea2-b69d-4b8d-9381-b33b94e0cd3d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/182-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.653388561s",
		"executionTime": "1.651730135s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202646
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2000-10-27T07:09:00" )
AND user.user_since < 
DATETIME(
 "2000-12-04T07:09:00" )
AND msg.send_time >=
DATETIME(
 "2014-02-12T20:07:28" )
AND msg.send_time <
DATETIME(
 "2014-02-13T20:07:28" )
GROUP BY user.id;
;
 

{
	"requestID": "25b6c2f6-cffe-4608-81dc-fa99e48cc093",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/183-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.714975276s",
		"executionTime": "18.713279019s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7672112
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2005-04-19T17:32:38" )
AND user.user_since < 
DATETIME(
 "2005-05-27T17:32:38" )
AND msg.send_time >=
DATETIME(
 "2012-03-27T15:13:34" )
AND msg.send_time <
DATETIME(
 "2012-03-28T15:13:34" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "1897bcde-fada-4b80-acb9-cc75f9f11665",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/184-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.640545805s",
		"executionTime": "16.63872545s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7678506
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2008-07-21T07:46:26" )
AND cm.send_time <
DATETIME(
 "2008-08-28T07:46:26" )
;
 

{
	"requestID": "e2fc8104-4a2d-4ea0-a7b2-c477962c2df8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/185-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "499.676107369s",
		"executionTime": "499.674457976s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3124978
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2005-04-17T08:08:50" )
AND cm.send_time <
DATETIME(
 "2005-05-25T08:08:50" )
group by sentiment(cm.message_text);
 

{
	"requestID": "a2708430-8a8e-4f87-adfe-d70c98865520",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/186-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "455.810819711s",
		"executionTime": "455.808014743s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3120856
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("27445393") ;
 

{
	"requestID": "b62bc9bc-964b-4a85-95b0-5a32a18dc473",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/187-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "31.007751ms",
		"executionTime": "27.476161ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("27977087") AND user.id <= 
 int64("27977187") ;
 

{
	"requestID": "81a6efff-71e4-4d3d-9dc8-f6927fcef179",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/188-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "26.175674ms",
		"executionTime": "24.937005ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2010-06-23T16:02:29" )
AND user.user_since <= 
DATETIME(
 "2010-06-23T16:07:29" )
;
 

{
	"requestID": "56dca92d-1c52-4d18-b98c-932db96cdf8c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/189-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.853689ms",
		"executionTime": "41.563589ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 114
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
 "2007-09-11T06:39:42" )
AND gbu.user_since <= 
DATETIME(
 "2007-09-11T06:44:42" )
;
 

{
	"requestID": "7744e867-b083-4459-b7e7-bbac658ccd8f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/190-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "52.609009ms",
		"executionTime": "50.95224ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 136
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
 "2013-09-20T06:09:42" )
AND gbu.user_since <= 
DATETIME(
 "2013-09-20T06:14:42" )
;
 

{
	"requestID": "c60d09df-8b20-41bd-adb0-41c1ab190f3e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/191-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.222141ms",
		"executionTime": "40.775414ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 104
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-02-15T11:40:47" )
AND cm.send_time <
DATETIME(
 "2000-02-15T11:43:17" );
 

{
	"requestID": "8ccb26fb-51c8-4f73-b3ff-4df6ae63688e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/192-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "35.950099ms",
		"executionTime": "34.590536ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 128
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-11-26T00:08:22" )
AND cm.send_time <
DATETIME(
 "2003-11-26T00:10:52" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "6037b6c8-1d07-4cc7-bb71-dd6f2b067b47",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/193-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "41.015215ms",
		"executionTime": "39.648169ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-06-15T03:32:16" )
AND cm.send_time <
DATETIME(
 "2005-06-15T03:34:46" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "bdba85f3-c6e6-4676-b42e-e766b418d6e9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/194-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "48.997511ms",
		"executionTime": "47.51594ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 164
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 26.1421  81.5891 ,
 26.1521  81.5891 ,
 26.1521  81.5991 ,
 26.1421  81.5991 ,
 26.1421  81.5891 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "6888be9a-3268-4dce-bf5c-4b6934709333",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/195-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "36.400161ms",
		"executionTime": "35.09375ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 52
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
	"requestID": "155a3fcc-cd6d-4246-ae97-d27c1fd99bd3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/196-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "130.876045774s",
		"executionTime": "130.874767154s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-01-01T19:18:52" )
and
gbu.user_since <
DATETIME(
 "2007-01-01T19:23:52" )
and
gbm.send_time >=
DATETIME(
 "2005-05-28T10:40:32" )
and
gbm.send_time <
DATETIME(
 "2005-05-29T10:40:32" )
;
 

{
	"requestID": "72609590-a733-4a59-ae1f-b67a61c9fc85",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/197-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.883772182s",
		"executionTime": "2.882346971s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168974
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2008-01-17T12:25:35" )
and gbm.send_time < 
DATETIME(
 "2008-01-17T12:30:35" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-05-01T23:17:34" )
and gbu.user_since <
DATETIME(
 "2005-05-02T23:17:34" )
;
 

{
	"requestID": "86f6bc7f-2987-4002-9735-04cc31c0291f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/198-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.449138963s",
		"executionTime": "1.447665925s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34390
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
 "2002-09-01T00:25:16" )
AND user.user_since < 
DATETIME(
 "2002-09-01T00:30:16" )
AND msg.send_time >=
DATETIME(
 "2010-10-03T01:11:34" )
AND msg.send_time <
DATETIME(
 "2010-10-04T01:11:34" )
GROUP BY user.id;
;
 

{
	"requestID": "63f53ba8-450e-4660-9975-2cc4f10f7416",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/199-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.872608767s",
		"executionTime": "2.87087s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168026
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
 "2000-05-08T06:09:33" )
AND user.user_since < 
DATETIME(
 "2000-05-08T06:14:33" )
AND msg.send_time >=
DATETIME(
 "2001-02-20T03:16:47" )
AND msg.send_time <
DATETIME(
 "2001-02-21T03:16:47" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "6d6f4431-963c-4677-b02e-2cb9751e2e44",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/200-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.64809621s",
		"executionTime": "2.646502941s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168456
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-06-28T13:56:40" )
and
gbu.user_since <
DATETIME(
 "2008-06-28T14:01:40" )
and
gbm.send_time >=
DATETIME(
 "2002-02-01T08:12:13" )
and
gbm.send_time <
DATETIME(
 "2002-02-02T08:12:13" )
;
 

{
	"requestID": "debeee44-9e74-432b-b631-bc071e69a964",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/201-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.767666082s",
		"executionTime": "8.765786984s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 250893
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2008-06-17T18:33:26" )
and gbm.send_time < 
DATETIME(
 "2008-06-17T18:38:26" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2001-07-25T18:43:49" )
and gbu.user_since <
DATETIME(
 "2001-07-26T18:43:49" )
;
 

{
	"requestID": "0d782c07-ba2a-4610-a65d-c5f85d0f9f02",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/202-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.401107478s",
		"executionTime": "2.399481474s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 203178
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2010-12-13T06:32:57" )
AND user.user_since < 
DATETIME(
 "2010-12-13T06:37:57" )
AND msg.send_time >=
DATETIME(
 "2009-07-12T04:44:07" )
AND msg.send_time <
DATETIME(
 "2009-07-13T04:44:07" )
GROUP BY user.id;
;
 

{
	"requestID": "7f2a9ec8-6204-4aef-b8f7-18585abad229",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/203-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "78.513588ms",
		"executionTime": "76.909604ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 572
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2011-01-11T18:24:21" )
AND user.user_since < 
DATETIME(
 "2011-01-11T18:29:21" )
AND msg.send_time >=
DATETIME(
 "2008-04-28T17:41:13" )
AND msg.send_time <
DATETIME(
 "2008-04-29T17:41:13" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "ce560775-58f5-4b78-9446-fdf34b590608",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/204-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "84.560708ms",
		"executionTime": "82.885657ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 622
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2007-10-20T09:04:48" )
AND cm.send_time <
DATETIME(
 "2007-10-20T09:09:48" )
;
 

{
	"requestID": "43eadcad-ebe7-4bb1-9724-875271cba4fe",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/205-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "637.690561ms",
		"executionTime": "636.313209ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 292
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2003-10-04T14:16:51" )
AND cm.send_time <
DATETIME(
 "2003-10-04T14:21:51" )
group by sentiment(cm.message_text);
 

{
	"requestID": "33b05e6a-2567-4dc0-a6da-a11e6ee53cc1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/206-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "670.654647ms",
		"executionTime": "668.88059ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 296
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("52890209") ;
 

{
	"requestID": "0200df41-6176-4720-8c67-704c2ca7920b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/207-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "21.782055ms",
		"executionTime": "20.616539ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("62306502") AND user.id <= 
 int64("62316502") ;
 

{
	"requestID": "ecd2df0d-f899-404c-8043-a0cdf569cf7c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/208-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "146.03942ms",
		"executionTime": "144.916134ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2006-05-13T12:16:04" )
AND user.user_since <= 
DATETIME(
 "2006-05-13T21:16:04" )
;
 

{
	"requestID": "d4a70fde-815f-4357-8d86-ba6fe0235b69",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/209-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "424.569544ms",
		"executionTime": "423.746228ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12520
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2008-03-18T00:45:44" )
AND gbu.user_since <= 
DATETIME(
 "2008-03-18T09:45:44" )
;
 

{
	"requestID": "7c36153e-3c21-4208-9487-5dbf6cd09b1e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/210-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "386.781974ms",
		"executionTime": "385.443429ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12262
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2012-04-02T01:40:31" )
AND gbu.user_since <= 
DATETIME(
 "2012-04-02T10:40:31" )
;
 

{
	"requestID": "d16bfff0-ae5c-4db8-bbf3-a2e2a03e50e0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/211-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "366.863347ms",
		"executionTime": "365.440696ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12562
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2009-07-20T09:34:27" )
AND cm.send_time <
DATETIME(
 "2009-07-20T13:19:27" );
 

{
	"requestID": "297405a3-af07-47fb-8409-db535b80b1f2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/212-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "87.807328ms",
		"executionTime": "86.541583ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12614
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-06-28T23:47:44" )
AND cm.send_time <
DATETIME(
 "2011-06-29T03:32:44" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "fe284216-4b92-46f0-988d-e83585c605e2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/213-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "125.397628ms",
		"executionTime": "123.754075ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12816
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2007-08-21T12:43:23" )
AND cm.send_time <
DATETIME(
 "2007-08-21T16:28:23" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "b08c2475-5129-4f13-9636-d99471afc6e6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/214-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "109.844499ms",
		"executionTime": "108.725216ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12556
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 26.2739  81.1707 ,
 26.373900000000003  81.1707 ,
 26.373900000000003  81.27069999999999 ,
 26.2739  81.27069999999999 ,
 26.2739  81.1707 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "8130cc3a-88d8-4b1e-bba0-7df9665d302d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/215-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "72.814619ms",
		"executionTime": "71.896345ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5292
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Galaxy" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "745a13e1-f22f-4fec-8e59-f38575bf65e1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/216-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "128.783315105s",
		"executionTime": "128.782102608s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-04-24T17:41:56" )
and
gbu.user_since <
DATETIME(
 "2012-04-25T02:41:56" )
and
gbm.send_time >=
DATETIME(
 "2010-12-15T23:42:34" )
and
gbm.send_time <
DATETIME(
 "2010-12-16T23:42:34" )
;
 

{
	"requestID": "3ee462d8-2c45-4050-9ebc-ed55bed47ac7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/217-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.874611859s",
		"executionTime": "3.872611417s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 181270
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2005-07-20T02:28:38" )
and gbm.send_time < 
DATETIME(
 "2005-07-20T11:28:38" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2009-03-22T18:08:43" )
and gbu.user_since <
DATETIME(
 "2009-03-23T18:08:43" )
;
 

{
	"requestID": "4ed4adb7-ea8c-4a6a-ad8d-b371f07a64de",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/218-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.087469815s",
		"executionTime": "2.086058652s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96376
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2012-03-14T14:30:33" )
AND user.user_since < 
DATETIME(
 "2012-03-14T23:30:33" )
AND msg.send_time >=
DATETIME(
 "2002-12-08T20:11:23" )
AND msg.send_time <
DATETIME(
 "2002-12-09T20:11:23" )
GROUP BY user.id;
;
 

{
	"requestID": "99500412-1a9d-4291-9937-7a52b1977087",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/219-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.023210025s",
		"executionTime": "4.02177227s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 181110
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2010-06-25T11:35:33" )
AND user.user_since < 
DATETIME(
 "2010-06-25T20:35:33" )
AND msg.send_time >=
DATETIME(
 "2003-09-16T09:27:46" )
AND msg.send_time <
DATETIME(
 "2003-09-17T09:27:46" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "e2ba915a-a109-4f5d-9a09-8103087b6c62",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/220-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.048328947s",
		"executionTime": "4.04740818s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180618
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2010-04-10T13:39:31" )
and
gbu.user_since <
DATETIME(
 "2010-04-10T22:39:31" )
and
gbm.send_time >=
DATETIME(
 "2010-06-08T10:50:22" )
and
gbm.send_time <
DATETIME(
 "2010-06-09T10:50:22" )
;
 

{
	"requestID": "fcfbc343-1875-40c5-ac96-aee4f3870598",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/221-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.379064573s",
		"executionTime": "6.377653471s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252381
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2003-03-16T22:23:48" )
and gbm.send_time < 
DATETIME(
 "2003-03-17T07:23:48" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-02-15T20:47:36" )
and gbu.user_since <
DATETIME(
 "2013-02-16T20:47:36" )
;
 

{
	"requestID": "599c0cf9-248e-441a-9dce-250b0055b852",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/222-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.803064908s",
		"executionTime": "2.801523286s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 199420
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-01-08T02:33:49" )
AND user.user_since < 
DATETIME(
 "2007-01-08T11:33:49" )
AND msg.send_time >=
DATETIME(
 "2012-06-03T21:43:28" )
AND msg.send_time <
DATETIME(
 "2012-06-04T21:43:28" )
GROUP BY user.id;
;
 

{
	"requestID": "d197aa77-0daf-4dd5-b8a8-9ab016fe7086",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/223-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.103415044s",
		"executionTime": "1.101863504s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76230
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-09-03T05:41:56" )
AND user.user_since < 
DATETIME(
 "2007-09-03T14:41:56" )
AND msg.send_time >=
DATETIME(
 "2008-04-27T19:35:11" )
AND msg.send_time <
DATETIME(
 "2008-04-28T19:35:11" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "4aad2d7c-f0ad-4691-aa0b-4a90db059600",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/224-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.029403969s",
		"executionTime": "1.02787184s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 75884
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2002-10-06T19:25:16" )
AND cm.send_time <
DATETIME(
 "2002-10-07T04:25:16" )
;
 

{
	"requestID": "935fa9cf-1af7-4508-811d-49f586d7831d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/225-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.838166233s",
		"executionTime": "4.83639883s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31118
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2005-03-07T03:53:00" )
AND cm.send_time <
DATETIME(
 "2005-03-07T12:53:00" )
group by sentiment(cm.message_text);
 

{
	"requestID": "07327b38-6c0e-4b41-9372-10d6cefdb569",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/226-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.965876507s",
		"executionTime": "4.964526971s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31168
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("14253658") ;
 

{
	"requestID": "cd3fabed-47a3-4920-8ae5-b8ae420b7069",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/227-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "23.27726ms",
		"executionTime": "22.0157ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("33857521") AND user.id <= 
 int64("34857521") ;
 

{
	"requestID": "50972a12-e75b-4f35-912b-508549dc3cc6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/228-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.509462959s",
		"executionTime": "10.508191263s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2001-10-09T06:26:49" )
AND user.user_since <= 
DATETIME(
 "2001-11-16T06:26:49" )
;
 

{
	"requestID": "1b7c3794-355c-46c0-bf98-08ce83cc2ae3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/229-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.88332951s",
		"executionTime": "11.882201466s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276372
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2008-04-08T21:11:29" )
AND gbu.user_since <= 
DATETIME(
 "2008-05-16T21:11:29" )
;
 

{
	"requestID": "74eadf7f-f4e8-4ff5-a535-e55ed140060b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/230-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.817475868s",
		"executionTime": "8.816107536s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276720
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2010-11-07T21:51:34" )
AND gbu.user_since <= 
DATETIME(
 "2010-12-15T21:51:34" )
;
 

{
	"requestID": "e05a80b6-87d7-4692-8f67-5069b75b720a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/231-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.721157427s",
		"executionTime": "4.71984474s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1275932
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2009-12-13T14:30:52" )
AND cm.send_time <
DATETIME(
 "2009-12-28T14:30:52" );
 

{
	"requestID": "7b4c8f49-8b59-48e0-a820-4b95897abfda",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/232-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.62279312s",
		"executionTime": "3.621916388s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232148
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-04-05T05:16:22" )
AND cm.send_time <
DATETIME(
 "2013-04-20T05:16:22" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "aa2306a0-d569-4808-937c-6b4ce487a5da",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/233-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.448737691s",
		"executionTime": "5.446955993s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233196
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-10-27T08:27:36" )
AND cm.send_time <
DATETIME(
 "2013-11-11T08:27:36" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "9699f178-0b44-42c4-a7e5-8aa0d2e9c70b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/234-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.74075763s",
		"executionTime": "4.73929617s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1231026
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 28.4674  73.5865 ,
 38.4674  73.5865 ,
 38.4674  83.5865 ,
 28.4674  83.5865 ,
 28.4674  73.5865 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "04776e50-2d8b-46b3-978c-198d7147dd71",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/235-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "140.523247961s",
		"executionTime": "140.522256697s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 54991098
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Surface" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "b3625c89-aceb-4b05-b621-27c627cf55c3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/236-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "126.452197526s",
		"executionTime": "126.450707763s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2002-07-08T14:57:22" )
and
gbu.user_since <
DATETIME(
 "2002-08-15T14:57:22" )
and
gbm.send_time >=
DATETIME(
 "2000-12-24T04:33:45" )
and
gbm.send_time <
DATETIME(
 "2000-12-25T04:33:45" )
;
 

{
	"requestID": "aa7ebb9e-639e-4898-ae10-f49270b8816e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/237-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.732607206s",
		"executionTime": "7.730021568s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1447268
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2011-12-24T03:33:40" )
and gbm.send_time < 
DATETIME(
 "2012-01-31T03:33:40" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2008-01-20T23:22:35" )
and gbu.user_since <
DATETIME(
 "2008-01-21T23:22:35" )
;
 

{
	"requestID": "81bd6249-9f12-466c-aa35-d3dd40940252",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/238-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.63031182s",
		"executionTime": "60.628170172s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6424614
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2005-09-27T15:48:14" )
AND user.user_since < 
DATETIME(
 "2005-11-04T15:48:14" )
AND msg.send_time >=
DATETIME(
 "2014-01-06T04:12:33" )
AND msg.send_time <
DATETIME(
 "2014-01-07T04:12:33" )
GROUP BY user.id;
;
 

{
	"requestID": "8964de48-5789-4b2f-95a1-f22f9ab6069d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/239-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.024938909s",
		"executionTime": "7.021679459s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1442970
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2006-10-01T01:07:00" )
AND user.user_since < 
DATETIME(
 "2006-11-08T01:07:00" )
AND msg.send_time >=
DATETIME(
 "2001-01-21T15:01:20" )
AND msg.send_time <
DATETIME(
 "2001-01-22T15:01:20" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "4833a429-a767-47b4-a923-b9ba5863b192",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/240-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.080185024s",
		"executionTime": "3.078657828s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444458
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-07-12T05:22:53" )
and
gbu.user_since <
DATETIME(
 "2004-08-19T05:22:53" )
and
gbm.send_time >=
DATETIME(
 "2010-03-18T09:11:46" )
and
gbm.send_time <
DATETIME(
 "2010-03-19T09:11:46" )
;
 

{
	"requestID": "cbdd88a4-cc8e-4da4-9462-23a87f389106",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/241-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.07293721s",
		"executionTime": "1.071261464s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252243
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-05-03T19:00:52" )
and gbm.send_time < 
DATETIME(
 "2010-06-10T19:00:52" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2014-05-15T16:10:45" )
and gbu.user_since <
DATETIME(
 "2014-05-16T16:10:45" )
;
 

{
	"requestID": "07ac04d3-fd9d-4170-b183-6c53b3c5560d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/242-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.690411681s",
		"executionTime": "1.689388s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 199666
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2012-09-22T06:55:27" )
AND user.user_since < 
DATETIME(
 "2012-10-30T06:55:27" )
AND msg.send_time >=
DATETIME(
 "2009-04-09T17:52:36" )
AND msg.send_time <
DATETIME(
 "2009-04-10T17:52:36" )
GROUP BY user.id;
;
 

{
	"requestID": "ebf54e71-0ff8-4b0c-bd87-6b896eb45b0f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/243-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.168921792s",
		"executionTime": "18.167118403s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7669820
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2012-03-20T09:42:05" )
AND user.user_since < 
DATETIME(
 "2012-04-27T09:42:05" )
AND msg.send_time >=
DATETIME(
 "2009-06-07T00:01:35" )
AND msg.send_time <
DATETIME(
 "2009-06-08T00:01:35" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "fa8ec5f8-9252-4576-91b0-883d6b2f1bc4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/244-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.134435448s",
		"executionTime": "16.132872928s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7668718
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2004-08-08T05:27:46" )
AND cm.send_time <
DATETIME(
 "2004-09-15T05:27:46" )
;
 

{
	"requestID": "e5545e67-f63f-447b-92ab-ac1c2664a182",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/245-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "495.321057763s",
		"executionTime": "495.319263957s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3119208
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2012-12-13T18:14:36" )
AND cm.send_time <
DATETIME(
 "2013-01-20T18:14:36" )
group by sentiment(cm.message_text);
 

{
	"requestID": "a747b909-5009-44c6-8ca2-5523f49cf929",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/246-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "453.159031466s",
		"executionTime": "453.157543069s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3121958
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("49284912") ;
 

{
	"requestID": "33d6caff-3e46-4d2d-a0a3-5032cf1a2191",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/247-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.879795ms",
		"executionTime": "23.815669ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("69584593") AND user.id <= 
 int64("69584693") ;
 

{
	"requestID": "c2e1fc91-4c14-4622-977d-242bcfba39a1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/248-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.445207ms",
		"executionTime": "23.269884ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2004-02-21T22:00:18" )
AND user.user_since <= 
DATETIME(
 "2004-02-21T22:05:18" )
;
 

{
	"requestID": "3a61e54d-2fbe-4852-b5b9-3cb08315555a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/249-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "46.325617ms",
		"executionTime": "45.079829ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 134
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
 "2006-07-20T07:24:15" )
AND gbu.user_since <= 
DATETIME(
 "2006-07-20T07:29:15" )
;
 

{
	"requestID": "59aa9575-aee5-4272-8df1-003cdcd38c01",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/250-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "47.970426ms",
		"executionTime": "46.663642ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
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
 "2014-02-08T23:19:03" )
AND gbu.user_since <= 
DATETIME(
 "2014-02-08T23:24:03" )
;
 

{
	"requestID": "b424fda4-c225-4b6b-b362-0ce9209bfa47",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/251-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.193378ms",
		"executionTime": "41.001987ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 106
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2014-05-22T17:38:27" )
AND cm.send_time <
DATETIME(
 "2014-05-22T17:40:57" );
 

{
	"requestID": "5ba46610-d923-40a3-9e43-709050aa81ad",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/252-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "30.360271ms",
		"executionTime": "29.193078ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 140
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-06-03T11:36:02" )
AND cm.send_time <
DATETIME(
 "2005-06-03T11:38:32" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "6f6be4ac-ede8-490f-9ac9-fa2ead348522",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/253-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "43.839796ms",
		"executionTime": "42.394526ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 130
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-09-10T02:05:18" )
AND cm.send_time <
DATETIME(
 "2012-09-10T02:07:48" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "eb8a88b8-05dd-4478-93a7-44b377a70159",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/254-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "44.67076ms",
		"executionTime": "43.410915ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 116
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 39.5916  94.0259 ,
 39.6016  94.0259 ,
 39.6016  94.0359 ,
 39.5916  94.0359 ,
 39.5916  94.0259 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "d2ec6196-90a5-45b3-b714-424315d2b94f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/255-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "34.429005ms",
		"executionTime": "33.126485ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 50
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
	"requestID": "7a8bb07f-ed05-4f10-946c-024b6473aaa4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/256-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "132.627468166s",
		"executionTime": "132.626248203s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-10-25T17:13:13" )
and
gbu.user_since <
DATETIME(
 "2004-10-25T17:18:13" )
and
gbm.send_time >=
DATETIME(
 "2004-04-28T16:06:01" )
and
gbm.send_time <
DATETIME(
 "2004-04-29T16:06:01" )
;
 

{
	"requestID": "913e8645-b84a-4550-b63c-c1855867bda6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/257-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.020786017s",
		"executionTime": "3.019450566s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168740
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-06-14T15:30:03" )
and gbm.send_time < 
DATETIME(
 "2004-06-14T15:35:03" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2002-03-18T12:54:40" )
and gbu.user_since <
DATETIME(
 "2002-03-19T12:54:40" )
;
 

{
	"requestID": "bced0a5b-da6f-4d57-831f-4bd56bbdcc53",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/258-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.44251184s",
		"executionTime": "1.441424063s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 33844
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
 "2003-12-10T13:29:38" )
AND user.user_since < 
DATETIME(
 "2003-12-10T13:34:38" )
AND msg.send_time >=
DATETIME(
 "2010-12-23T18:15:33" )
AND msg.send_time <
DATETIME(
 "2010-12-24T18:15:33" )
GROUP BY user.id;
;
 

{
	"requestID": "8e626bf6-1eb8-406f-bd4e-e20b38206d96",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/259-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.859423504s",
		"executionTime": "2.857786257s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167744
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
 "2013-10-16T21:06:02" )
AND user.user_since < 
DATETIME(
 "2013-10-16T21:11:02" )
AND msg.send_time >=
DATETIME(
 "2008-04-02T01:36:32" )
AND msg.send_time <
DATETIME(
 "2008-04-03T01:36:32" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "3635454b-81ed-4e7f-adc5-318dd73fff00",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/260-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.799438833s",
		"executionTime": "2.797998212s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168060
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-07-24T02:27:38" )
and
gbu.user_since <
DATETIME(
 "2004-07-24T02:32:38" )
and
gbm.send_time >=
DATETIME(
 "2000-01-18T22:41:00" )
and
gbm.send_time <
DATETIME(
 "2000-01-19T22:41:00" )
;
 

{
	"requestID": "742e2647-3ca9-46bb-aff9-90ec8193ec48",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/261-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.253853128s",
		"executionTime": "8.25246509s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252279
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2002-07-14T18:57:48" )
and gbm.send_time < 
DATETIME(
 "2002-07-14T19:02:48" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-04-11T01:19:32" )
and gbu.user_since <
DATETIME(
 "2005-04-12T01:19:32" )
;
 

{
	"requestID": "6d8b7a02-bb6a-4dae-aa69-e41038546a28",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/262-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.458590443s",
		"executionTime": "2.457155875s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 200954
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2000-04-15T10:31:40" )
AND user.user_since < 
DATETIME(
 "2000-04-15T10:36:40" )
AND msg.send_time >=
DATETIME(
 "2006-12-08T16:52:00" )
AND msg.send_time <
DATETIME(
 "2006-12-09T16:52:00" )
GROUP BY user.id;
;
 

{
	"requestID": "a2a23d04-3539-4699-a02e-11308f8beec4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/263-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "64.597413ms",
		"executionTime": "63.477731ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 608
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2009-09-16T11:48:26" )
AND user.user_since < 
DATETIME(
 "2009-09-16T11:53:26" )
AND msg.send_time >=
DATETIME(
 "2003-04-17T07:27:08" )
AND msg.send_time <
DATETIME(
 "2003-04-18T07:27:08" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "4745834b-f1d1-4495-a700-cfce2b7f0d7f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/264-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "82.074197ms",
		"executionTime": "81.038149ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 860
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2007-08-07T14:46:26" )
AND cm.send_time <
DATETIME(
 "2007-08-07T14:51:26" )
;
 

{
	"requestID": "c47a3289-73b9-4a41-bb7d-935a4bad6bcc",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/265-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "630.640639ms",
		"executionTime": "629.345308ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 304
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2002-10-18T17:57:24" )
AND cm.send_time <
DATETIME(
 "2002-10-18T18:02:24" )
group by sentiment(cm.message_text);
 

{
	"requestID": "09e17ba8-c6c1-4701-9607-3cebcd657aa5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/266-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "622.775518ms",
		"executionTime": "621.360396ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 304
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("44538346") ;
 

{
	"requestID": "a27599f4-1d07-4afb-95e3-cd7923c318d9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/267-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "21.013363ms",
		"executionTime": "19.917412ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("54111858") AND user.id <= 
 int64("54121858") ;
 

{
	"requestID": "bb7e79a1-a361-423f-b68d-78ff39421d7e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/268-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "154.704415ms",
		"executionTime": "153.674662ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2002-09-21T21:02:28" )
AND user.user_since <= 
DATETIME(
 "2002-09-22T06:02:28" )
;
 

{
	"requestID": "053f55f6-c4f0-4348-9c5a-7b637dcdba22",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/269-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "416.092375ms",
		"executionTime": "415.037221ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12516
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2006-01-02T15:45:21" )
AND gbu.user_since <= 
DATETIME(
 "2006-01-03T00:45:21" )
;
 

{
	"requestID": "85bfca75-c379-4609-8c45-8a239328d755",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/270-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "411.694152ms",
		"executionTime": "410.597742ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12640
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2014-04-25T04:10:26" )
AND gbu.user_since <= 
DATETIME(
 "2014-04-25T13:10:26" )
;
 

{
	"requestID": "0f612869-e523-44e0-a810-81b920fc0fd1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/271-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "328.924922ms",
		"executionTime": "327.687064ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12306
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-10-26T02:51:14" )
AND cm.send_time <
DATETIME(
 "2002-10-26T06:36:14" );
 

{
	"requestID": "7be100ef-55b4-4050-afc0-d9ddd2fdbaad",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/272-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "92.640471ms",
		"executionTime": "91.580433ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12872
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-01-17T11:08:40" )
AND cm.send_time <
DATETIME(
 "2006-01-17T14:53:40" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "6691d0e8-4439-4529-9765-a01ff31bfee5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/273-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "136.837492ms",
		"executionTime": "135.609593ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12858
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-01-16T11:23:14" )
AND cm.send_time <
DATETIME(
 "2013-01-16T15:08:14" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "cbe8d3e9-4a6f-41bc-ad46-2430c48324b2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/274-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "120.712803ms",
		"executionTime": "119.857108ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12974
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 25.0162  94.6434 ,
 25.116200000000003  94.6434 ,
 25.116200000000003  94.7434 ,
 25.0162  94.7434 ,
 25.0162  94.6434 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "dfb81750-efae-4c54-b69c-bc3d2645cb3f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/275-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "71.824029ms",
		"executionTime": "70.65084ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5262
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Galaxy" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "916bf71f-df8e-436b-9843-2bccc57f5802",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/276-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.852636051s",
		"executionTime": "129.851499406s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2003-07-12T00:32:42" )
and
gbu.user_since <
DATETIME(
 "2003-07-12T09:32:42" )
and
gbm.send_time >=
DATETIME(
 "2003-09-27T01:12:25" )
and
gbm.send_time <
DATETIME(
 "2003-09-28T01:12:25" )
;
 

{
	"requestID": "dc4c1cd3-bab4-469f-b0d0-408ad7576fec",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/277-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.826621099s",
		"executionTime": "3.824936191s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180678
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-04-08T18:02:31" )
and gbm.send_time < 
DATETIME(
 "2001-04-09T03:02:31" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2006-04-06T09:16:37" )
and gbu.user_since <
DATETIME(
 "2006-04-07T09:16:37" )
;
 

{
	"requestID": "3fb834f9-3398-4ac7-bfe2-c5ec00e683b3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/278-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.23560101s",
		"executionTime": "2.23424275s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96396
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2005-12-04T15:00:38" )
AND user.user_since < 
DATETIME(
 "2005-12-05T00:00:38" )
AND msg.send_time >=
DATETIME(
 "2003-03-03T17:02:12" )
AND msg.send_time <
DATETIME(
 "2003-03-04T17:02:12" )
GROUP BY user.id;
;
 

{
	"requestID": "ce496d14-9038-46a6-a957-5fefb144054c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/279-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.802581163s",
		"executionTime": "3.801689933s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 181028
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2003-12-09T14:25:24" )
AND user.user_since < 
DATETIME(
 "2003-12-09T23:25:24" )
AND msg.send_time >=
DATETIME(
 "2013-12-09T12:13:11" )
AND msg.send_time <
DATETIME(
 "2013-12-10T12:13:11" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "b13132d8-f30f-46a6-af16-0b505c940dc4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/280-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.952906252s",
		"executionTime": "3.951498665s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180312
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-05-14T20:10:41" )
and
gbu.user_since <
DATETIME(
 "2007-05-15T05:10:41" )
and
gbm.send_time >=
DATETIME(
 "2013-05-27T23:06:16" )
and
gbm.send_time <
DATETIME(
 "2013-05-28T23:06:16" )
;
 

{
	"requestID": "818baa86-b26c-44f0-89a3-077a343d9d86",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/281-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.536789571s",
		"executionTime": "6.535034746s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251901
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-07-12T04:51:43" )
and gbm.send_time < 
DATETIME(
 "2001-07-12T13:51:43" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-07-10T08:40:12" )
and gbu.user_since <
DATETIME(
 "2013-07-11T08:40:12" )
;
 

{
	"requestID": "1f915394-02ca-430b-914d-4539d3313c81",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/282-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.867093727s",
		"executionTime": "2.865488822s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 204010
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2009-11-07T05:01:16" )
AND user.user_since < 
DATETIME(
 "2009-11-07T14:01:16" )
AND msg.send_time >=
DATETIME(
 "2005-04-02T21:19:34" )
AND msg.send_time <
DATETIME(
 "2005-04-03T21:19:34" )
GROUP BY user.id;
;
 

{
	"requestID": "5b70f88b-96f6-49a4-b75a-13760757d1f4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/283-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.101425662s",
		"executionTime": "1.099885253s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 75636
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2001-07-21T05:35:15" )
AND user.user_since < 
DATETIME(
 "2001-07-21T14:35:15" )
AND msg.send_time >=
DATETIME(
 "2003-08-19T02:38:28" )
AND msg.send_time <
DATETIME(
 "2003-08-20T02:38:28" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "6a583941-1fe8-4c72-8c3a-78abd63ecc55",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/284-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.074933183s",
		"executionTime": "1.07361449s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76914
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2012-05-19T18:28:51" )
AND cm.send_time <
DATETIME(
 "2012-05-20T03:28:51" )
;
 

{
	"requestID": "a62b704b-49e4-4166-aeb9-85b7ca5a9fa0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/285-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.848864143s",
		"executionTime": "4.847344816s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30778
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2009-02-03T04:05:03" )
AND cm.send_time <
DATETIME(
 "2009-02-03T13:05:03" )
group by sentiment(cm.message_text);
 

{
	"requestID": "070719fd-d42c-4928-a297-40e7d435c254",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/286-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.711937191s",
		"executionTime": "4.710663074s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30338
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("14591761") ;
 

{
	"requestID": "be88d61e-1306-4f06-a623-de84dc646730",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/287-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "22.614081ms",
		"executionTime": "21.84025ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("6430930") AND user.id <= 
 int64("7430930") ;
 

{
	"requestID": "4419fc83-bd41-4c78-bb27-56653ad8f990",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/288-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.578128337s",
		"executionTime": "10.577082614s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2003-03-03T21:07:26" )
AND user.user_since <= 
DATETIME(
 "2003-04-10T21:07:26" )
;
 

{
	"requestID": "a6cb9086-b2ea-426b-922c-be6f4658ce4d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/289-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.986235942s",
		"executionTime": "11.985096187s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276590
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2004-03-16T12:23:26" )
AND gbu.user_since <= 
DATETIME(
 "2004-04-23T12:23:26" )
;
 

{
	"requestID": "9ee46812-b661-4361-93e9-16bc607cc06f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/290-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.684979522s",
		"executionTime": "7.683853228s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1278964
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2011-09-07T17:15:19" )
AND gbu.user_since <= 
DATETIME(
 "2011-10-15T17:15:19" )
;
 

{
	"requestID": "e1cb68a4-23b9-4243-9a49-4f82205a34b6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/291-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.110995742s",
		"executionTime": "4.109707858s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1279748
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-05-14T05:48:21" )
AND cm.send_time <
DATETIME(
 "2013-05-29T05:48:21" );
 

{
	"requestID": "2e4d315e-1458-46e8-a4b5-e1578729d85e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/292-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.859268859s",
		"executionTime": "3.85798651s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1231248
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-02-18T08:18:12" )
AND cm.send_time <
DATETIME(
 "2003-03-05T08:18:12" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "d44897fe-f632-413d-8f37-b7a86ab82331",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/293-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.233826814s",
		"executionTime": "5.232834011s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233080
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-03-04T12:56:29" )
AND cm.send_time <
DATETIME(
 "2001-03-19T12:56:29" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "83b7aa3b-3881-4d42-b1b5-0dcb24bb69dd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/294-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.609860093s",
		"executionTime": "4.608626685s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233590
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 47.4295  76.1904 ,
 57.4295  76.1904 ,
 57.4295  86.1904 ,
 47.4295  86.1904 ,
 47.4295  76.1904 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "8df4a7d4-2dcf-41aa-8b3d-5c6e96368078",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/295-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "27.665519323s",
		"executionTime": "27.664652315s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 8635794
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Surface" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "ab5365d8-39c8-4f39-b654-67b6858eec3b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/296-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "119.248281314s",
		"executionTime": "119.247105132s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-02-19T11:51:07" )
and
gbu.user_since <
DATETIME(
 "2001-03-29T11:51:07" )
and
gbm.send_time >=
DATETIME(
 "2009-06-26T10:42:01" )
and
gbm.send_time <
DATETIME(
 "2009-06-27T10:42:01" )
;
 

{
	"requestID": "4530c455-4e60-4094-92a8-460dd2fa6c52",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/297-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.356487489s",
		"executionTime": "7.35397415s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444628
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2003-10-26T20:26:20" )
and gbm.send_time < 
DATETIME(
 "2003-12-03T20:26:20" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-10-06T04:55:15" )
and gbu.user_since <
DATETIME(
 "2013-10-07T04:55:15" )
;
 

{
	"requestID": "edce1453-eed1-4670-ae1c-90a5d6e55676",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/298-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.80992612s",
		"executionTime": "60.808528098s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6415850
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2008-08-14T09:23:09" )
AND user.user_since < 
DATETIME(
 "2008-09-21T09:23:09" )
AND msg.send_time >=
DATETIME(
 "2013-03-24T00:42:25" )
AND msg.send_time <
DATETIME(
 "2013-03-25T00:42:25" )
GROUP BY user.id;
;
 

{
	"requestID": "17b88695-fb19-4f5e-8f77-e6f32a84c2c6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/299-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.06672095s",
		"executionTime": "8.065205546s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1445266
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2008-07-23T05:53:19" )
AND user.user_since < 
DATETIME(
 "2008-08-30T05:53:19" )
AND msg.send_time >=
DATETIME(
 "2010-11-19T10:26:48" )
AND msg.send_time <
DATETIME(
 "2010-11-20T10:26:48" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "4812981e-0d38-48aa-8597-8ad34f61b9d6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/300-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.964694495s",
		"executionTime": "2.963282987s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444850
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-09-07T01:15:37" )
and
gbu.user_since <
DATETIME(
 "2001-10-15T01:15:37" )
and
gbm.send_time >=
DATETIME(
 "2000-09-06T14:17:07" )
and
gbm.send_time <
DATETIME(
 "2000-09-07T14:17:07" )
;
 

{
	"requestID": "88622795-cfc3-41b7-b405-34d24c8ac68c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/301-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.065408866s",
		"executionTime": "1.064484014s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252573
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2014-02-20T08:22:52" )
and gbm.send_time < 
DATETIME(
 "2014-03-30T08:22:52" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-09-14T22:01:01" )
and gbu.user_since <
DATETIME(
 "2005-09-15T22:01:01" )
;
 

{
	"requestID": "e0c2cb80-f03b-4093-b4e5-0c6d54004c7c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/302-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.717415293s",
		"executionTime": "1.715833603s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 200312
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2008-02-22T14:51:28" )
AND user.user_since < 
DATETIME(
 "2008-03-31T14:51:28" )
AND msg.send_time >=
DATETIME(
 "2001-10-12T14:53:18" )
AND msg.send_time <
DATETIME(
 "2001-10-13T14:53:18" )
GROUP BY user.id;
;
 

{
	"requestID": "bde1ccd6-a807-4a3b-ae26-24feb5280c5d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/303-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.913585914s",
		"executionTime": "18.912063196s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7661152
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2003-11-02T13:30:45" )
AND user.user_since < 
DATETIME(
 "2003-12-10T13:30:45" )
AND msg.send_time >=
DATETIME(
 "2004-10-11T23:52:45" )
AND msg.send_time <
DATETIME(
 "2004-10-12T23:52:45" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "66953807-7b09-481e-be55-f60a38ee7ddf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/304-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "15.573985035s",
		"executionTime": "15.572512143s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7664954
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-12-21T21:57:51" )
AND cm.send_time <
DATETIME(
 "2010-01-28T21:57:51" )
;
 

{
	"requestID": "239f1111-eb93-4a13-8fef-205e1ce435c1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/305-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "484.967975676s",
		"executionTime": "484.966490372s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3122598
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2008-01-02T15:18:16" )
AND cm.send_time <
DATETIME(
 "2008-02-09T15:18:16" )
group by sentiment(cm.message_text);
 

{
	"requestID": "28e8b54d-dc6f-4828-88f0-d38e9d4e7abb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/306-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "454.824326358s",
		"executionTime": "454.822838783s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3122400
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("86484710") ;
 

{
	"requestID": "0290739f-e2df-4249-80f7-f90e06da025d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/307-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.021747ms",
		"executionTime": "22.854516ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("24656378") AND user.id <= 
 int64("24656478") ;
 

{
	"requestID": "4d1291ac-c2ed-49d3-8886-208e336bea78",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/308-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "21.655595ms",
		"executionTime": "20.505225ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2000-03-24T23:34:39" )
AND user.user_since <= 
DATETIME(
 "2000-03-24T23:39:39" )
;
 

{
	"requestID": "d291128e-13ca-4502-b215-6abfb482c1bd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/309-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.393511ms",
		"executionTime": "39.230633ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 124
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
 "2009-05-17T14:16:34" )
AND gbu.user_since <= 
DATETIME(
 "2009-05-17T14:21:34" )
;
 

{
	"requestID": "05f6a2e5-9a52-4708-b90f-d6f2d6c6ae89",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/310-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "27.223208ms",
		"executionTime": "26.238793ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 102
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
 "2014-08-03T16:30:37" )
AND gbu.user_since <= 
DATETIME(
 "2014-08-03T16:35:37" )
;
 

{
	"requestID": "25392d2c-3d06-4609-bfb2-8c41aaa0f9a7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/311-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.254904ms",
		"executionTime": "39.112014ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 132
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-11-24T10:35:09" )
AND cm.send_time <
DATETIME(
 "2013-11-24T10:37:39" );
 

{
	"requestID": "1a0d5821-f4dc-4791-9b15-69a100b8c0fa",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/312-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "29.623195ms",
		"executionTime": "28.562898ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 120
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-01-21T08:06:12" )
AND cm.send_time <
DATETIME(
 "2011-01-21T08:08:42" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "33585083-c54c-4c19-b307-65b35da64d9a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/313-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "31.236217ms",
		"executionTime": "30.295511ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2008-09-22T19:52:17" )
AND cm.send_time <
DATETIME(
 "2008-09-22T19:54:47" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "6bbe1a41-a6bb-4216-b681-4278cb7f03f9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/314-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "35.956882ms",
		"executionTime": "34.70436ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 134
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 45.79  79.6912 ,
 45.8  79.6912 ,
 45.8  79.7012 ,
 45.79  79.7012 ,
 45.79  79.6912 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "70467787-1930-4328-ac02-1f8da325fd85",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/315-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "36.231163ms",
		"executionTime": "35.129284ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 64
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
	"requestID": "adfd6cf7-56a6-474d-8727-395301abd3c2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/316-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "130.733688671s",
		"executionTime": "130.732562188s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-08-19T05:49:35" )
and
gbu.user_since <
DATETIME(
 "2012-08-19T05:54:35" )
and
gbm.send_time >=
DATETIME(
 "2009-04-14T23:33:41" )
and
gbm.send_time <
DATETIME(
 "2009-04-15T23:33:41" )
;
 

{
	"requestID": "296e5212-8934-4add-8d4a-fd938108767a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/317-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.113026977s",
		"executionTime": "3.111838338s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168552
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-06-26T03:32:57" )
and gbm.send_time < 
DATETIME(
 "2013-06-26T03:37:57" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2006-02-04T23:56:44" )
and gbu.user_since <
DATETIME(
 "2006-02-05T23:56:44" )
;
 

{
	"requestID": "f4abf69a-b669-4fac-9752-c06fc84634c5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/318-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.414314994s",
		"executionTime": "1.412796648s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34116
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
 "2002-09-22T03:39:24" )
AND user.user_since < 
DATETIME(
 "2002-09-22T03:44:24" )
AND msg.send_time >=
DATETIME(
 "2005-11-07T02:55:40" )
AND msg.send_time <
DATETIME(
 "2005-11-08T02:55:40" )
GROUP BY user.id;
;
 

{
	"requestID": "e876f227-98b8-4ebf-98ad-379672d670bf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/319-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.910727955s",
		"executionTime": "2.90937353s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168206
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
 "2009-08-15T00:41:27" )
AND user.user_since < 
DATETIME(
 "2009-08-15T00:46:27" )
AND msg.send_time >=
DATETIME(
 "2014-01-17T15:09:31" )
AND msg.send_time <
DATETIME(
 "2014-01-18T15:09:31" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "5b5b9daa-cfab-4bed-b15e-c4347d528ebd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/320-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.86060879s",
		"executionTime": "2.859278826s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167084
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2005-04-15T18:46:48" )
and
gbu.user_since <
DATETIME(
 "2005-04-15T18:51:48" )
and
gbm.send_time >=
DATETIME(
 "2009-07-04T22:11:18" )
and
gbm.send_time <
DATETIME(
 "2009-07-05T22:11:18" )
;
 

{
	"requestID": "70fa5ccc-b9dd-431d-a4ae-3fec8e3196a5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/321-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.021627632s",
		"executionTime": "8.020193415s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251742
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2011-11-10T08:45:29" )
and gbm.send_time < 
DATETIME(
 "2011-11-10T08:50:29" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-01-14T10:25:02" )
and gbu.user_since <
DATETIME(
 "2003-01-15T10:25:02" )
;
 

{
	"requestID": "a9c37456-415d-4422-9b9d-bb000e3c9264",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/322-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.396213713s",
		"executionTime": "2.3945809s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 201514
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2004-05-19T19:21:54" )
AND user.user_since < 
DATETIME(
 "2004-05-19T19:26:54" )
AND msg.send_time >=
DATETIME(
 "2004-08-09T04:31:12" )
AND msg.send_time <
DATETIME(
 "2004-08-10T04:31:12" )
GROUP BY user.id;
;
 

{
	"requestID": "44080a06-2f37-46a1-98ea-c7025376a87e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/323-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "72.552928ms",
		"executionTime": "71.246437ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 630
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2012-08-23T11:04:06" )
AND user.user_since < 
DATETIME(
 "2012-08-23T11:09:06" )
AND msg.send_time >=
DATETIME(
 "2006-05-07T09:48:14" )
AND msg.send_time <
DATETIME(
 "2006-05-08T09:48:14" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "dc82f66e-6b9e-4ca0-8c43-c1d34a111e3b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/324-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "75.413751ms",
		"executionTime": "73.968443ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 684
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-04-20T11:35:08" )
AND cm.send_time <
DATETIME(
 "2009-04-20T11:40:08" )
;
 

{
	"requestID": "94b58dfc-7f1b-40b3-a6da-a9184c912d2d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/325-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "622.50456ms",
		"executionTime": "621.004242ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 270
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2014-06-23T12:22:33" )
AND cm.send_time <
DATETIME(
 "2014-06-23T12:27:33" )
group by sentiment(cm.message_text);
 

{
	"requestID": "a65fba51-f876-4980-a1cf-eb0a0f3338d7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/326-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "614.727504ms",
		"executionTime": "613.525476ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 300
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("65610941") ;
 

{
	"requestID": "2ddc6732-cdc2-4097-886f-8102d6767c1c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/327-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "20.248439ms",
		"executionTime": "19.211383ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("83427524") AND user.id <= 
 int64("83437524") ;
 

{
	"requestID": "3cb5bc85-15f9-4dc7-b793-a02bc3f11438",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/328-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "143.879436ms",
		"executionTime": "142.854806ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2001-02-26T17:22:44" )
AND user.user_since <= 
DATETIME(
 "2001-02-27T02:22:44" )
;
 

{
	"requestID": "7ca501d3-5c76-452a-babd-d62ed9fc89da",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/329-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "396.743728ms",
		"executionTime": "395.695428ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12560
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2005-09-11T00:27:25" )
AND gbu.user_since <= 
DATETIME(
 "2005-09-11T09:27:25" )
;
 

{
	"requestID": "b0377a09-9b11-43d0-851b-50c1305f8377",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/330-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "355.532373ms",
		"executionTime": "354.218642ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12048
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2000-01-22T04:50:44" )
AND gbu.user_since <= 
DATETIME(
 "2000-01-22T13:50:44" )
;
 

{
	"requestID": "a48c5dd1-3ff3-42d9-8378-c94b73583db7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/331-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "332.168839ms",
		"executionTime": "331.041691ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12450
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2008-01-11T22:03:19" )
AND cm.send_time <
DATETIME(
 "2008-01-12T01:48:19" );
 

{
	"requestID": "9854d7d4-0093-422f-9419-636f864616d8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/332-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "98.213156ms",
		"executionTime": "97.071663ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12628
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-02-16T13:28:51" )
AND cm.send_time <
DATETIME(
 "2006-02-16T17:13:51" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "fad7567f-abff-447f-a59c-b84521b44dc5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/333-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "132.474187ms",
		"executionTime": "131.154425ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 13034
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-06-03T17:56:57" )
AND cm.send_time <
DATETIME(
 "2012-06-03T21:41:57" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "3674e68c-a25f-4b74-8014-39bf6e17d00f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/334-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.032268ms",
		"executionTime": "127.672095ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12954
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 25.2672  75.6281 ,
 25.3672  75.6281 ,
 25.3672  75.7281 ,
 25.2672  75.7281 ,
 25.2672  75.6281 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "615badb2-4bfd-4cab-9af5-7de43c4f9685",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/335-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "71.781428ms",
		"executionTime": "70.705508ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5442
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Kindle" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "d7930daf-aa7a-45ed-bbcb-797324c291e9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/336-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.898173475s",
		"executionTime": "129.896904426s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-01-06T19:30:28" )
and
gbu.user_since <
DATETIME(
 "2001-01-07T04:30:28" )
and
gbm.send_time >=
DATETIME(
 "2013-06-25T17:43:57" )
and
gbm.send_time <
DATETIME(
 "2013-06-26T17:43:57" )
;
 

{
	"requestID": "a8ac5aa3-276b-47fd-84c1-2eae267413e8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/337-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.908117501s",
		"executionTime": "3.904851916s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180604
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-03-28T18:31:30" )
and gbm.send_time < 
DATETIME(
 "2013-03-29T03:31:30" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-02-25T21:30:31" )
and gbu.user_since <
DATETIME(
 "2013-02-26T21:30:31" )
;
 

{
	"requestID": "2ba28c5c-0185-4141-a2f8-ab2ea49711a2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/338-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.063456472s",
		"executionTime": "2.061998541s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96546
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2011-10-10T17:40:23" )
AND user.user_since < 
DATETIME(
 "2011-10-11T02:40:23" )
AND msg.send_time >=
DATETIME(
 "2009-10-17T01:24:09" )
AND msg.send_time <
DATETIME(
 "2009-10-18T01:24:09" )
GROUP BY user.id;
;
 

{
	"requestID": "3d6e8be7-1451-415c-8171-a9eeb0bdefd0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/339-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.787178346s",
		"executionTime": "3.785292988s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180506
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2006-05-08T13:26:23" )
AND user.user_since < 
DATETIME(
 "2006-05-08T22:26:23" )
AND msg.send_time >=
DATETIME(
 "2005-09-08T00:48:50" )
AND msg.send_time <
DATETIME(
 "2005-09-09T00:48:50" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "4a04cfb5-f49e-4698-bbfc-18e80dd244a7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/340-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.935876363s",
		"executionTime": "3.93448493s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180338
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-02-09T22:16:03" )
and
gbu.user_since <
DATETIME(
 "2004-02-10T07:16:03" )
and
gbm.send_time >=
DATETIME(
 "2004-05-23T12:29:36" )
and
gbm.send_time <
DATETIME(
 "2004-05-24T12:29:36" )
;
 

{
	"requestID": "d9c55fcc-6a36-4ddf-982c-44bdd2826c69",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/341-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.594351747s",
		"executionTime": "6.592992986s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 253098
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2002-09-22T00:16:38" )
and gbm.send_time < 
DATETIME(
 "2002-09-22T09:16:38" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2002-11-20T00:31:31" )
and gbu.user_since <
DATETIME(
 "2002-11-21T00:31:31" )
;
 

{
	"requestID": "4f9c2e68-2cd1-4d65-8a5f-efc914d01b64",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/342-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.776026904s",
		"executionTime": "2.774443382s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202292
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2001-02-07T10:46:04" )
AND user.user_since < 
DATETIME(
 "2001-02-07T19:46:04" )
AND msg.send_time >=
DATETIME(
 "2005-06-22T00:18:00" )
AND msg.send_time <
DATETIME(
 "2005-06-23T00:18:00" )
GROUP BY user.id;
;
 

{
	"requestID": "cb9082a6-24ae-4cb3-a6a9-76ef5acca02f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/343-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.110769895s",
		"executionTime": "1.109314968s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 78252
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-10-10T01:43:19" )
AND user.user_since < 
DATETIME(
 "2013-10-10T10:43:19" )
AND msg.send_time >=
DATETIME(
 "2004-03-02T23:10:16" )
AND msg.send_time <
DATETIME(
 "2004-03-03T23:10:16" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "72e427db-b112-46ca-9984-339acc1cdbbc",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/344-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.053613017s",
		"executionTime": "1.052250602s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76720
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2011-04-20T16:31:03" )
AND cm.send_time <
DATETIME(
 "2011-04-21T01:31:03" )
;
 

{
	"requestID": "0e5837db-8a3c-4b17-9fc0-e77870e0a88d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/345-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.864669074s",
		"executionTime": "4.863289717s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31162
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2013-09-18T04:05:43" )
AND cm.send_time <
DATETIME(
 "2013-09-18T13:05:43" )
group by sentiment(cm.message_text);
 

{
	"requestID": "f481464a-4bb9-4259-bad5-13c4bdb760c6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/346-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.879057069s",
		"executionTime": "4.877883234s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30804
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("67767874") ;
 

{
	"requestID": "2ba04fca-9ef0-4531-b13b-1f5b2670b392",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/347-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.795141ms",
		"executionTime": "18.696588ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("87620301") AND user.id <= 
 int64("88620301") ;
 

{
	"requestID": "27b78f67-4a0e-455f-92a6-aaebf9ebdcbc",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/348-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.556865702s",
		"executionTime": "10.555941847s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2011-05-03T00:36:27" )
AND user.user_since <= 
DATETIME(
 "2011-06-10T00:36:27" )
;
 

{
	"requestID": "ea71e349-9777-4738-a636-a217c7f66410",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/349-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.830245559s",
		"executionTime": "11.829266093s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1275490
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2007-11-07T17:21:44" )
AND gbu.user_since <= 
DATETIME(
 "2007-12-15T17:21:44" )
;
 

{
	"requestID": "a51e6036-84e1-41b0-9439-09af788625fb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/350-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.513966088s",
		"executionTime": "8.513235955s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1277966
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2003-08-08T09:41:57" )
AND gbu.user_since <= 
DATETIME(
 "2003-09-15T09:41:57" )
;
 

{
	"requestID": "e5d60fb3-ee74-4fb8-a2ae-35bdf72ef00d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/351-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.187837956s",
		"executionTime": "4.186711469s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1277252
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-03-27T20:29:46" )
AND cm.send_time <
DATETIME(
 "2005-04-11T20:29:46" );
 

{
	"requestID": "8b80bb71-7d44-45d4-a4b1-1c462c2fd51f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/352-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.6088526s",
		"executionTime": "3.607770756s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233442
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-01-21T19:22:54" )
AND cm.send_time <
DATETIME(
 "2012-02-05T19:22:54" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "eb375930-55eb-4f54-862b-fcdaa21474de",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/353-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.357263728s",
		"executionTime": "5.355897507s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1230892
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-08-22T09:26:43" )
AND cm.send_time <
DATETIME(
 "2006-09-06T09:26:43" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "6c8db477-f364-456c-8948-c99013ada7d9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/354-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.670865796s",
		"executionTime": "4.669610582s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1228790
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 41.9109  88.057 ,
 51.9109  88.057 ,
 51.9109  98.057 ,
 41.9109  98.057 ,
 41.9109  88.057 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "607da972-efd5-4001-b6f8-48905b50fb32",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/355-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "100.130892154s",
		"executionTime": "100.130154859s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 38768796
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Surface" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "efa6de80-c4d6-4702-8b1b-360b7e2e6384",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/356-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "125.800371707s",
		"executionTime": "125.799331259s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-05-14T16:49:23" )
and
gbu.user_since <
DATETIME(
 "2012-06-21T16:49:23" )
and
gbm.send_time >=
DATETIME(
 "2004-07-20T21:21:18" )
and
gbm.send_time <
DATETIME(
 "2004-07-21T21:21:18" )
;
 

{
	"requestID": "7ff1acf4-5d88-44ac-8377-e30c93f6f5e3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/357-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.597531108s",
		"executionTime": "7.596274129s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446536
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-12-03T07:07:05" )
and gbm.send_time < 
DATETIME(
 "2002-01-10T07:07:05" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2010-01-06T06:45:45" )
and gbu.user_since <
DATETIME(
 "2010-01-07T06:45:45" )
;
 

{
	"requestID": "1bf900c9-cb02-482c-99f1-302ea2f536ad",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/358-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "61.01033025s",
		"executionTime": "61.009158956s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6418480
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2006-10-08T22:56:23" )
AND user.user_since < 
DATETIME(
 "2006-11-15T22:56:23" )
AND msg.send_time >=
DATETIME(
 "2006-10-03T08:54:06" )
AND msg.send_time <
DATETIME(
 "2006-10-04T08:54:06" )
GROUP BY user.id;
;
 

{
	"requestID": "7aa26bfd-ad83-4ae5-9745-0667be225b8a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/359-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.493657852s",
		"executionTime": "8.492273884s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446678
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2012-08-26T09:29:56" )
AND user.user_since < 
DATETIME(
 "2012-10-03T09:29:56" )
AND msg.send_time >=
DATETIME(
 "2003-07-20T18:02:56" )
AND msg.send_time <
DATETIME(
 "2003-07-21T18:02:56" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "9a40f12a-c6a0-46bb-8254-3c785719519b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/360-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.281390604s",
		"executionTime": "3.27997007s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444782
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-03-07T06:12:17" )
and
gbu.user_since <
DATETIME(
 "2008-04-14T06:12:17" )
and
gbm.send_time >=
DATETIME(
 "2011-10-08T21:55:05" )
and
gbm.send_time <
DATETIME(
 "2011-10-09T21:55:05" )
;
 

{
	"requestID": "fe8e1093-7fa8-4579-8af2-0ea37f494bbf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/361-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.187451437s",
		"executionTime": "1.186625104s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 250845
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2011-12-20T09:00:38" )
and gbm.send_time < 
DATETIME(
 "2012-01-27T09:00:38" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-10-07T05:53:15" )
and gbu.user_since <
DATETIME(
 "2005-10-08T05:53:15" )
;
 

{
	"requestID": "c48f3146-31a1-492f-b65c-ee356b6a057f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/362-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.705363664s",
		"executionTime": "1.704583702s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 201360
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2004-04-05T11:03:19" )
AND user.user_since < 
DATETIME(
 "2004-05-13T11:03:19" )
AND msg.send_time >=
DATETIME(
 "2010-05-26T23:40:48" )
AND msg.send_time <
DATETIME(
 "2010-05-27T23:40:48" )
GROUP BY user.id;
;
 

{
	"requestID": "8e4701e3-ed27-461a-ac2b-d1c37d0ddf7b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/363-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.508087786s",
		"executionTime": "19.506863451s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7659670
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2014-03-12T08:16:09" )
AND user.user_since < 
DATETIME(
 "2014-04-19T08:16:09" )
AND msg.send_time >=
DATETIME(
 "2003-06-22T19:21:29" )
AND msg.send_time <
DATETIME(
 "2003-06-23T19:21:29" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "6ad663fd-e039-4844-bbfa-b305cc982fad",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/364-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.750873085s",
		"executionTime": "16.74953957s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7670428
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2004-07-17T23:52:23" )
AND cm.send_time <
DATETIME(
 "2004-08-24T23:52:23" )
;
 

{
	"requestID": "256c58c1-cae7-4079-9b8c-344acfe1631a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/365-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "489.33111267s",
		"executionTime": "489.32996447s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3119812
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2014-07-22T20:17:45" )
AND cm.send_time <
DATETIME(
 "2014-08-29T20:17:45" )
group by sentiment(cm.message_text);
 

{
	"requestID": "f2b21ddb-eb89-415a-85f7-1cf04a1fe600",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/366-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "455.586593469s",
		"executionTime": "455.585541718s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3119130
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("16269681") ;
 

{
	"requestID": "74773910-1dec-4253-88ca-cd6e0b9367f7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/367-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "23.340505ms",
		"executionTime": "22.438253ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("50418731") AND user.id <= 
 int64("50418831") ;
 

{
	"requestID": "47eafbe9-6fe1-443e-99e0-9641432d38ca",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/368-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "22.202943ms",
		"executionTime": "21.284944ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2014-01-27T11:30:43" )
AND user.user_since <= 
DATETIME(
 "2014-01-27T11:35:43" )
;
 

{
	"requestID": "90f80c21-3551-4a58-925a-a4ed7c9eb985",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/369-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "36.32367ms",
		"executionTime": "35.38075ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 140
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
 "2011-01-06T16:33:46" )
AND gbu.user_since <= 
DATETIME(
 "2011-01-06T16:38:46" )
;
 

{
	"requestID": "25573a7a-db0d-465d-99ea-9b9b5cafeb1b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/370-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "37.053411ms",
		"executionTime": "35.619797ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 102
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
 "2010-08-21T18:16:02" )
AND gbu.user_since <= 
DATETIME(
 "2010-08-21T18:21:02" )
;
 

{
	"requestID": "1bdf73b3-af96-4f9f-9af8-8085dcc6d839",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/371-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "36.720662ms",
		"executionTime": "35.637302ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 90
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-09-17T14:27:32" )
AND cm.send_time <
DATETIME(
 "2012-09-17T14:30:02" );
 

{
	"requestID": "0daa559e-c94a-4774-bc42-12590c2a8f52",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/372-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "25.800472ms",
		"executionTime": "24.808791ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 146
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2009-01-07T14:02:08" )
AND cm.send_time <
DATETIME(
 "2009-01-07T14:04:38" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "fb0a18df-8335-4b1d-a074-8a042312b761",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/373-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.870009ms",
		"executionTime": "39.804926ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 178
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-10-28T19:13:48" )
AND cm.send_time <
DATETIME(
 "2006-10-28T19:16:18" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "2116877a-d20a-427e-95da-4d8f5c59ab00",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/374-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "44.095363ms",
		"executionTime": "42.897646ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 140
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 48.3547  66.6001 ,
 48.3647  66.6001 ,
 48.3647  66.6101 ,
 48.3547  66.6101 ,
 48.3547  66.6001 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "c2812940-49cc-4e3d-adb4-385e2b1fbc07",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/375-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "32.00168ms",
		"executionTime": "30.895374ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 72
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
	"requestID": "44595905-d2b7-4877-a0d1-123692c0fd66",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/376-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "130.706352516s",
		"executionTime": "130.705367499s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2011-04-17T17:56:50" )
and
gbu.user_since <
DATETIME(
 "2011-04-17T18:01:50" )
and
gbm.send_time >=
DATETIME(
 "2014-04-26T11:46:33" )
and
gbm.send_time <
DATETIME(
 "2014-04-27T11:46:33" )
;
 

{
	"requestID": "e6bd8993-1e8c-4004-9a89-2c96f7fee90e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/377-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.029220899s",
		"executionTime": "3.028117227s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168168
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2012-10-20T04:37:54" )
and gbm.send_time < 
DATETIME(
 "2012-10-20T04:42:54" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2012-11-09T11:01:01" )
and gbu.user_since <
DATETIME(
 "2012-11-10T11:01:01" )
;
 

{
	"requestID": "ca6a1b02-c9ce-4d24-b20f-fb702923ea74",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/378-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.278243176s",
		"executionTime": "1.277145123s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 33748
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
 "2004-05-02T10:40:00" )
AND user.user_since < 
DATETIME(
 "2004-05-02T10:45:00" )
AND msg.send_time >=
DATETIME(
 "2012-05-16T08:52:34" )
AND msg.send_time <
DATETIME(
 "2012-05-17T08:52:34" )
GROUP BY user.id;
;
 

{
	"requestID": "f2fd4830-4263-4c1f-9323-cc5a2b10c554",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/379-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.132840134s",
		"executionTime": "3.131732282s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168648
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
 "2004-01-08T13:48:36" )
AND user.user_since < 
DATETIME(
 "2004-01-08T13:53:36" )
AND msg.send_time >=
DATETIME(
 "2002-09-26T00:40:02" )
AND msg.send_time <
DATETIME(
 "2002-09-27T00:40:02" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "08ccb853-4802-4ca6-9fec-6ec1cc411cde",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/380-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.856285064s",
		"executionTime": "2.855105124s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167690
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-11-08T04:29:14" )
and
gbu.user_since <
DATETIME(
 "2012-11-08T04:34:14" )
and
gbm.send_time >=
DATETIME(
 "2000-06-04T22:56:16" )
and
gbm.send_time <
DATETIME(
 "2000-06-05T22:56:16" )
;
 

{
	"requestID": "a265a490-c8ba-435c-b0df-6761a307b2b8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/381-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.8081311s",
		"executionTime": "7.807126572s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251316
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2005-03-10T14:19:33" )
and gbm.send_time < 
DATETIME(
 "2005-03-10T14:24:33" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-04-20T00:38:43" )
and gbu.user_since <
DATETIME(
 "2003-04-21T00:38:43" )
;
 

{
	"requestID": "4b8d1045-81cc-4dd6-aaed-20a8be243339",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/382-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.458702191s",
		"executionTime": "2.457540793s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 204110
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-04-27T01:44:04" )
AND user.user_since < 
DATETIME(
 "2007-04-27T01:49:04" )
AND msg.send_time >=
DATETIME(
 "2014-03-16T07:14:43" )
AND msg.send_time <
DATETIME(
 "2014-03-17T07:14:43" )
GROUP BY user.id;
;
 

{
	"requestID": "ae64f332-af42-4b29-81b0-2395b6daf603",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/383-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "70.54197ms",
		"executionTime": "69.377588ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 698
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-08-05T14:32:48" )
AND user.user_since < 
DATETIME(
 "2007-08-05T14:37:48" )
AND msg.send_time >=
DATETIME(
 "2002-06-10T09:44:32" )
AND msg.send_time <
DATETIME(
 "2002-06-11T09:44:32" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "13477f56-c5f9-4e71-a919-5cfe8942eb76",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/384-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "73.726445ms",
		"executionTime": "72.361483ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 768
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2011-08-05T20:47:16" )
AND cm.send_time <
DATETIME(
 "2011-08-05T20:52:16" )
;
 

{
	"requestID": "dfe6ed84-e176-4346-abda-299dfbbccbfc",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/385-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "592.483057ms",
		"executionTime": "591.121991ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 264
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2005-05-25T15:47:04" )
AND cm.send_time <
DATETIME(
 "2005-05-25T15:52:04" )
group by sentiment(cm.message_text);
 

{
	"requestID": "aa0305d8-11b9-4dfa-a432-c98d2f85dbf6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/386-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "631.263362ms",
		"executionTime": "629.529466ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 244
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("23807089") ;
 

{
	"requestID": "17917215-e139-4f5e-8b11-0ca7da5803a8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/387-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.972366ms",
		"executionTime": "17.862271ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("32417673") AND user.id <= 
 int64("32427673") ;
 

{
	"requestID": "fd2c0bd0-1692-4b78-a991-e86b9a229ec4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/388-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "145.681197ms",
		"executionTime": "144.923961ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2009-12-06T19:15:49" )
AND user.user_since <= 
DATETIME(
 "2009-12-07T04:15:49" )
;
 

{
	"requestID": "5c6c2a89-45d5-4fb0-ae2c-e231dfaafb79",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/389-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "372.200685ms",
		"executionTime": "371.111883ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12372
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2002-08-20T19:38:45" )
AND gbu.user_since <= 
DATETIME(
 "2002-08-21T04:38:45" )
;
 

{
	"requestID": "3a69940c-bed7-40a7-ade1-88ee14b585a6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/390-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "360.410157ms",
		"executionTime": "359.442349ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12554
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2002-01-09T16:48:49" )
AND gbu.user_since <= 
DATETIME(
 "2002-01-10T01:48:49" )
;
 

{
	"requestID": "3f60d237-f573-4239-a597-abd52da87a25",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/391-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "310.337425ms",
		"executionTime": "309.444902ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12568
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-01-01T19:12:17" )
AND cm.send_time <
DATETIME(
 "2011-01-01T22:57:17" );
 

{
	"requestID": "3907a339-0fce-465c-bbdc-a2b5eb03e499",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/392-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "98.966577ms",
		"executionTime": "98.120163ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 13034
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-06-24T09:31:01" )
AND cm.send_time <
DATETIME(
 "2000-06-24T13:16:01" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "5680e358-9eb2-4a1e-a37d-414f5b7b68d2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/393-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "128.379082ms",
		"executionTime": "127.462041ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12720
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-09-10T07:17:40" )
AND cm.send_time <
DATETIME(
 "2013-09-10T11:02:40" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "c0863f78-cc6f-4bce-8275-bca43cfecb57",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/394-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "125.590758ms",
		"executionTime": "124.578423ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 13014
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 39.1188  84.6949 ,
 39.2188  84.6949 ,
 39.2188  84.7949 ,
 39.1188  84.7949 ,
 39.1188  84.6949 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "3a914801-f415-455e-a141-f33329a550f1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/395-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "74.48123ms",
		"executionTime": "73.63369ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5442
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Galaxy" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "fb1fdf6e-9746-44cf-a931-da4bbef017c8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/396-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "127.701524622s",
		"executionTime": "127.700648417s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2010-05-24T11:44:04" )
and
gbu.user_since <
DATETIME(
 "2010-05-24T20:44:04" )
and
gbm.send_time >=
DATETIME(
 "2012-10-25T21:38:23" )
and
gbm.send_time <
DATETIME(
 "2012-10-26T21:38:23" )
;
 

{
	"requestID": "983a7bf1-e929-4dd5-8f3a-d7be7c45f073",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/397-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.903806385s",
		"executionTime": "3.903007791s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180868
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2008-03-05T01:54:09" )
and gbm.send_time < 
DATETIME(
 "2008-03-05T10:54:09" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2010-08-22T01:56:01" )
and gbu.user_since <
DATETIME(
 "2010-08-23T01:56:01" )
;
 

{
	"requestID": "be276e34-4ba3-4443-a179-a4bd56fbfa7b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/398-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.955768134s",
		"executionTime": "1.954732889s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96672
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2010-05-05T15:15:13" )
AND user.user_since < 
DATETIME(
 "2010-05-06T00:15:13" )
AND msg.send_time >=
DATETIME(
 "2013-09-10T13:32:50" )
AND msg.send_time <
DATETIME(
 "2013-09-11T13:32:50" )
GROUP BY user.id;
;
 

{
	"requestID": "9198f7b5-69ce-4c8a-af02-b925cda4946e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/399-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.19120029s",
		"executionTime": "4.190146352s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180318
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2007-06-11T19:17:01" )
AND user.user_since < 
DATETIME(
 "2007-06-12T04:17:01" )
AND msg.send_time >=
DATETIME(
 "2012-01-07T06:18:32" )
AND msg.send_time <
DATETIME(
 "2012-01-08T06:18:32" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "c5d0529c-0e2f-4487-a47e-71f0aa074d96",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/400-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.974797764s",
		"executionTime": "3.973656475s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 181130
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2005-06-01T12:33:31" )
and
gbu.user_since <
DATETIME(
 "2005-06-01T21:33:31" )
and
gbm.send_time >=
DATETIME(
 "2007-09-10T02:37:38" )
and
gbm.send_time <
DATETIME(
 "2007-09-11T02:37:38" )
;
 

{
	"requestID": "eb16095a-3c7a-4992-a73b-97024d3f0126",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/401-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.399673931s",
		"executionTime": "6.398375145s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252141
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-12-25T09:30:22" )
and gbm.send_time < 
DATETIME(
 "2004-12-25T18:30:22" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-03-03T08:13:36" )
and gbu.user_since <
DATETIME(
 "2003-03-04T08:13:36" )
;
 

{
	"requestID": "5a413916-95b8-4c28-967a-442ad1934fd4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/402-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.856062819s",
		"executionTime": "2.854927527s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 201614
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2009-11-08T07:56:52" )
AND user.user_since < 
DATETIME(
 "2009-11-08T16:56:52" )
AND msg.send_time >=
DATETIME(
 "2009-02-19T00:48:17" )
AND msg.send_time <
DATETIME(
 "2009-02-20T00:48:17" )
GROUP BY user.id;
;
 

{
	"requestID": "d3d49d56-ad65-4800-a297-fd7caf6b6c83",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/403-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.083100802s",
		"executionTime": "1.081849392s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76394
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2010-04-24T17:35:28" )
AND user.user_since < 
DATETIME(
 "2010-04-25T02:35:28" )
AND msg.send_time >=
DATETIME(
 "2014-03-24T18:52:34" )
AND msg.send_time <
DATETIME(
 "2014-03-25T18:52:34" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "3ea1f5a8-dcfa-45c9-ade0-32b7a402cb15",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/404-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.042600177s",
		"executionTime": "1.041267301s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 74708
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2010-12-05T08:07:33" )
AND cm.send_time <
DATETIME(
 "2010-12-05T17:07:33" )
;
 

{
	"requestID": "9adf0eca-7030-4a19-9f94-0182591afddb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/405-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.714302748s",
		"executionTime": "4.713164904s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30580
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2000-08-23T11:54:37" )
AND cm.send_time <
DATETIME(
 "2000-08-23T20:54:37" )
group by sentiment(cm.message_text);
 

{
	"requestID": "0b693179-a8ad-4bb5-85fb-3baef357a641",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/406-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.876846548s",
		"executionTime": "4.875709723s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31132
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("38573119") ;
 

{
	"requestID": "68b0b485-d52c-4cbe-b4fc-bf05d1b8d670",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/407-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "22.712207ms",
		"executionTime": "20.964447ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("70281158") AND user.id <= 
 int64("71281158") ;
 

{
	"requestID": "2260c404-a804-4775-8eaa-3c510856edc8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/408-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.862101519s",
		"executionTime": "10.861223319s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2013-09-14T09:13:00" )
AND user.user_since <= 
DATETIME(
 "2013-10-22T09:13:00" )
;
 

{
	"requestID": "7ac60c2d-3ffa-467a-884d-f3fd254b68bf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/409-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.666475383s",
		"executionTime": "11.665534357s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1279878
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2003-07-06T13:17:13" )
AND gbu.user_since <= 
DATETIME(
 "2003-08-13T13:17:13" )
;
 

{
	"requestID": "30063987-5f67-4337-b9aa-9d1d9fd58eb5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/410-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.914697859s",
		"executionTime": "7.913796236s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1274076
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2010-01-17T20:01:56" )
AND gbu.user_since <= 
DATETIME(
 "2010-02-24T20:01:56" )
;
 

{
	"requestID": "8c20194a-8372-448d-b4de-aa2b958f873b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/411-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.247134853s",
		"executionTime": "4.24603587s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276110
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2004-12-27T02:33:57" )
AND cm.send_time <
DATETIME(
 "2005-01-11T02:33:57" );
 

{
	"requestID": "e1456333-0e82-46f0-ae2d-9f7e2403264f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/412-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.93457797s",
		"executionTime": "2.933972204s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232988
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2008-02-02T18:51:36" )
AND cm.send_time <
DATETIME(
 "2008-02-17T18:51:36" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "2a99c7a7-84c2-4e9f-9e46-63916870ade3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/413-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.97839257s",
		"executionTime": "4.977116438s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1230816
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-11-17T11:47:32" )
AND cm.send_time <
DATETIME(
 "2006-12-02T11:47:32" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "472ddedc-db12-48d6-ba77-ba69c13cece1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/414-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.372747688s",
		"executionTime": "4.371575487s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233524
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 25.3919  72.0819 ,
 35.3919  72.0819 ,
 35.3919  82.0819 ,
 25.3919  82.0819 ,
 25.3919  72.0819 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "cfc5e97f-4dde-48ee-8aa4-2f59e153f863",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/415-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "145.700261411s",
		"executionTime": "145.699436553s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 54996388
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Surface" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "8208e9ab-a96a-4dfe-9145-1ad0c2266664",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/416-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "125.299647822s",
		"executionTime": "125.298367248s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-02-02T18:22:05" )
and
gbu.user_since <
DATETIME(
 "2004-03-11T18:22:05" )
and
gbm.send_time >=
DATETIME(
 "2012-03-07T04:14:05" )
and
gbm.send_time <
DATETIME(
 "2012-03-08T04:14:05" )
;
 

{
	"requestID": "c950758d-d126-4379-a7b4-d6b965af8582",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/417-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.759183348s",
		"executionTime": "7.757589403s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1447798
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-02-03T00:43:09" )
and gbm.send_time < 
DATETIME(
 "2013-03-13T00:43:09" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2008-09-26T20:47:34" )
and gbu.user_since <
DATETIME(
 "2008-09-27T20:47:34" )
;
 

{
	"requestID": "583cf347-135e-4257-994c-efc37a91bb2b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/418-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.261142305s",
		"executionTime": "60.259970032s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6426386
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2011-02-17T17:32:24" )
AND user.user_since < 
DATETIME(
 "2011-03-27T17:32:24" )
AND msg.send_time >=
DATETIME(
 "2013-07-14T23:10:55" )
AND msg.send_time <
DATETIME(
 "2013-07-15T23:10:55" )
GROUP BY user.id;
;
 

{
	"requestID": "cdb654f2-8c65-40f5-b735-ed357e81396d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/419-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.638763722s",
		"executionTime": "8.637620306s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1448490
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2010-06-20T23:32:02" )
AND user.user_since < 
DATETIME(
 "2010-07-28T23:32:02" )
AND msg.send_time >=
DATETIME(
 "2010-07-05T17:21:50" )
AND msg.send_time <
DATETIME(
 "2010-07-06T17:21:50" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "0270a786-fa19-4307-8105-db87ea420b1d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/420-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.102268424s",
		"executionTime": "3.101032279s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444466
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2013-06-15T07:14:34" )
and
gbu.user_since <
DATETIME(
 "2013-07-23T07:14:34" )
and
gbm.send_time >=
DATETIME(
 "2006-04-25T00:05:39" )
and
gbm.send_time <
DATETIME(
 "2006-04-26T00:05:39" )
;
 

{
	"requestID": "a2f37049-8032-4b7d-8495-85f932229a5c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/421-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.045979825s",
		"executionTime": "1.044373721s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 253749
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-12-07T02:35:02" )
and gbm.send_time < 
DATETIME(
 "2014-01-14T02:35:02" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2000-03-02T12:50:39" )
and gbu.user_since <
DATETIME(
 "2000-03-03T12:50:39" )
;
 

{
	"requestID": "587cc654-3c33-4a0b-ba2f-20432292d132",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/422-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.690793474s",
		"executionTime": "1.689523228s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202934
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-04-04T04:20:38" )
AND user.user_since < 
DATETIME(
 "2013-05-12T04:20:38" )
AND msg.send_time >=
DATETIME(
 "2010-06-08T18:54:00" )
AND msg.send_time <
DATETIME(
 "2010-06-09T18:54:00" )
GROUP BY user.id;
;
 

{
	"requestID": "15eab56f-de5a-4c30-ae38-623a076d49fb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/423-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.312217026s",
		"executionTime": "19.310965541s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7661706
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2008-07-13T05:12:25" )
AND user.user_since < 
DATETIME(
 "2008-08-20T05:12:25" )
AND msg.send_time >=
DATETIME(
 "2012-11-20T22:57:35" )
AND msg.send_time <
DATETIME(
 "2012-11-21T22:57:35" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "c761a439-a51e-49d8-9845-9d9626dc4f0c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/424-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "15.796168919s",
		"executionTime": "15.794872183s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7655156
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2008-12-13T02:52:57" )
AND cm.send_time <
DATETIME(
 "2009-01-20T02:52:57" )
;
 

{
	"requestID": "6e91c749-87fc-465c-bb17-093b0f05e26f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/425-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "499.733184745s",
		"executionTime": "499.731894527s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3125412
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2009-04-14T20:03:51" )
AND cm.send_time <
DATETIME(
 "2009-05-22T20:03:51" )
group by sentiment(cm.message_text);
 

{
	"requestID": "774cbc37-417e-42ec-8445-9c429a573e2b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/426-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "458.354753904s",
		"executionTime": "458.353647698s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3119752
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("27897501") ;
 

{
	"requestID": "e00df091-56b2-42e6-ba27-1955699c8736",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/427-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "26.644461ms",
		"executionTime": "25.937461ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("51308083") AND user.id <= 
 int64("51308183") ;
 

{
	"requestID": "d64ea626-b222-4332-bd67-d6a13fecd7b5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/428-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "23.816429ms",
		"executionTime": "23.039066ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2010-01-10T21:00:07" )
AND user.user_since <= 
DATETIME(
 "2010-01-10T21:05:07" )
;
 

{
	"requestID": "de6dd036-270a-4e4b-b74b-7f6c58c41719",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/429-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "41.832836ms",
		"executionTime": "40.976423ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 138
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
 "2008-02-27T08:19:40" )
AND gbu.user_since <= 
DATETIME(
 "2008-02-27T08:24:40" )
;
 

{
	"requestID": "f1a58068-3c53-4a9d-aaea-82d39799a3e1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/430-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "44.846913ms",
		"executionTime": "43.882636ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 144
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
 "2014-02-21T03:39:00" )
AND gbu.user_since <= 
DATETIME(
 "2014-02-21T03:44:00" )
;
 

{
	"requestID": "e71a6efe-5abf-4664-9ead-b5a3c256a298",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/431-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.735561ms",
		"executionTime": "41.751788ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 142
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-01-16T09:33:31" )
AND cm.send_time <
DATETIME(
 "2011-01-16T09:36:01" );
 

{
	"requestID": "2bbf4a89-4cf3-492c-8770-bee5aaa9f416",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/432-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "31.769135ms",
		"executionTime": "30.829239ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-05-13T05:33:33" )
AND cm.send_time <
DATETIME(
 "2002-05-13T05:36:03" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "91206dbd-25e5-4047-8d39-1101faf6f210",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/433-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "41.026379ms",
		"executionTime": "40.001408ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 128
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2007-08-24T12:00:51" )
AND cm.send_time <
DATETIME(
 "2007-08-24T12:03:21" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "2ffeeb24-9ae6-4007-af08-6577c1e4b96a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/434-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "48.950716ms",
		"executionTime": "47.845744ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 134
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 28.3785  79.5495 ,
 28.3885  79.5495 ,
 28.3885  79.5595 ,
 28.3785  79.5595 ,
 28.3785  79.5495 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "5885f044-2a71-48e8-bedb-006fe7e36161",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/435-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "34.804102ms",
		"executionTime": "33.840495ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 50
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
	"requestID": "1f841f0f-205c-4ccf-8360-bdd391d94438",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/436-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "132.82840034s",
		"executionTime": "132.827341175s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2000-01-28T19:23:30" )
and
gbu.user_since <
DATETIME(
 "2000-01-28T19:28:30" )
and
gbm.send_time >=
DATETIME(
 "2012-12-07T11:23:04" )
and
gbm.send_time <
DATETIME(
 "2012-12-08T11:23:04" )
;
 

{
	"requestID": "ea44db43-7ea1-43b4-b09e-123a5f9a7f24",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/437-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.137156139s",
		"executionTime": "3.134328168s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167966
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2012-10-17T11:17:20" )
and gbm.send_time < 
DATETIME(
 "2012-10-17T11:22:20" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2013-06-04T10:34:23" )
and gbu.user_since <
DATETIME(
 "2013-06-05T10:34:23" )
;
 

{
	"requestID": "4d61b958-b33a-4156-8ad1-ea4ca9ee779b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/438-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.295253076s",
		"executionTime": "1.29407582s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34094
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
 "2004-07-23T00:32:57" )
AND user.user_since < 
DATETIME(
 "2004-07-23T00:37:57" )
AND msg.send_time >=
DATETIME(
 "2005-11-03T05:15:19" )
AND msg.send_time <
DATETIME(
 "2005-11-04T05:15:19" )
GROUP BY user.id;
;
 

{
	"requestID": "b05cfc5d-9a88-4b2d-9c3a-0724a49e4db7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/439-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.001389493s",
		"executionTime": "3.000286718s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167636
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
 "2003-04-03T03:16:21" )
AND user.user_since < 
DATETIME(
 "2003-04-03T03:21:21" )
AND msg.send_time >=
DATETIME(
 "2007-06-21T08:33:52" )
AND msg.send_time <
DATETIME(
 "2007-06-22T08:33:52" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "d6adca0e-7ec3-4f9a-bb12-692aa24211ad",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/440-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.924358865s",
		"executionTime": "2.923370689s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167604
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-12-23T22:02:57" )
and
gbu.user_since <
DATETIME(
 "2001-12-23T22:07:57" )
and
gbm.send_time >=
DATETIME(
 "2001-01-26T00:07:16" )
and
gbm.send_time <
DATETIME(
 "2001-01-27T00:07:16" )
;
 

{
	"requestID": "089b4e7f-c9fc-482d-8bd8-392a44e26ba4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/441-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.733922479s",
		"executionTime": "7.732729332s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251337
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-07-23T13:51:26" )
and gbm.send_time < 
DATETIME(
 "2004-07-23T13:56:26" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-11-10T05:23:57" )
and gbu.user_since <
DATETIME(
 "2003-11-11T05:23:57" )
;
 

{
	"requestID": "d956e709-2e71-45e3-8a6b-3f9452fed92b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/442-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.447427212s",
		"executionTime": "2.446255913s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202844
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-09-08T09:29:52" )
AND user.user_since < 
DATETIME(
 "2013-09-08T09:34:52" )
AND msg.send_time >=
DATETIME(
 "2003-07-06T18:50:34" )
AND msg.send_time <
DATETIME(
 "2003-07-07T18:50:34" )
GROUP BY user.id;
;
 

{
	"requestID": "f3f73a87-b164-40a5-9e5a-9b727cda33bd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/443-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "79.246078ms",
		"executionTime": "78.076405ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 730
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-07-03T20:33:21" )
AND user.user_since < 
DATETIME(
 "2013-07-03T20:38:21" )
AND msg.send_time >=
DATETIME(
 "2003-07-19T18:10:02" )
AND msg.send_time <
DATETIME(
 "2003-07-20T18:10:02" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "1a3d3515-39b0-45ed-937d-cb20ea24162a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/444-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "71.702017ms",
		"executionTime": "70.622526ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 742
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-03-02T08:34:42" )
AND cm.send_time <
DATETIME(
 "2009-03-02T08:39:42" )
;
 

{
	"requestID": "958f641e-cd5c-415c-9e0b-c6b6cfbd33e8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/445-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "612.18871ms",
		"executionTime": "610.968437ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 286
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2003-10-10T22:19:33" )
AND cm.send_time <
DATETIME(
 "2003-10-10T22:24:33" )
group by sentiment(cm.message_text);
 

{
	"requestID": "e797aceb-8ba5-43e2-a216-53677c769212",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/446-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "591.759792ms",
		"executionTime": "590.807235ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 272
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("52200273") ;
 

{
	"requestID": "4389188f-9883-49db-ad48-fde6df90b73b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/447-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.479356ms",
		"executionTime": "18.603572ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("52992500") AND user.id <= 
 int64("53002500") ;
 

{
	"requestID": "cffa5d3c-2ccb-4411-9d9f-5bba76988884",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/448-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "143.431955ms",
		"executionTime": "142.613188ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2010-01-11T03:33:21" )
AND user.user_since <= 
DATETIME(
 "2010-01-11T12:33:21" )
;
 

{
	"requestID": "897d89ba-83d8-4262-995a-5a5a335923ff",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/449-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "406.055298ms",
		"executionTime": "405.084317ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12698
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2007-03-10T12:40:18" )
AND gbu.user_since <= 
DATETIME(
 "2007-03-10T21:40:18" )
;
 

{
	"requestID": "e826c624-99f6-4988-9491-d23a1ea0b9bb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/450-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "356.364922ms",
		"executionTime": "355.032789ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12912
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2010-10-17T21:27:41" )
AND gbu.user_since <= 
DATETIME(
 "2010-10-18T06:27:41" )
;
 

{
	"requestID": "1668d8b0-0c56-488a-8c3a-f6ce6a323bb2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/451-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "306.328239ms",
		"executionTime": "305.450965ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12666
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-10-15T20:03:45" )
AND cm.send_time <
DATETIME(
 "2005-10-15T23:48:45" );
 

{
	"requestID": "62b734bb-9697-4ba1-81fe-384e7a15b328",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/452-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "92.486202ms",
		"executionTime": "91.644543ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12580
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-01-02T21:14:55" )
AND cm.send_time <
DATETIME(
 "2006-01-03T00:59:55" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "0256eed0-e865-482a-bfb5-7d9fead5c0cc",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/453-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "128.757127ms",
		"executionTime": "127.53669ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12784
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-11-10T11:06:56" )
AND cm.send_time <
DATETIME(
 "2011-11-10T14:51:56" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "ca12e9d4-8474-4277-825e-59aa85b81ebf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/454-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "123.179311ms",
		"executionTime": "122.186461ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 13072
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 46.1554  86.5185 ,
 46.2554  86.5185 ,
 46.2554  86.6185 ,
 46.1554  86.6185 ,
 46.1554  86.5185 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "fe052e7b-20c7-4539-aef5-62c3caf89894",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/455-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "70.552818ms",
		"executionTime": "69.679364ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5492
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Kindle" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "ebf95fa3-3ca7-4cdc-96bc-fb81d411a52a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/456-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.211432636s",
		"executionTime": "129.210602004s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-05-24T14:35:14" )
and
gbu.user_since <
DATETIME(
 "2001-05-24T23:35:14" )
and
gbm.send_time >=
DATETIME(
 "2013-08-21T23:42:05" )
and
gbm.send_time <
DATETIME(
 "2013-08-22T23:42:05" )
;
 

{
	"requestID": "15102fe7-f151-426d-9306-14fcdcd65a9b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/457-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.044552048s",
		"executionTime": "4.043634116s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180570
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-07-01T20:54:02" )
and gbm.send_time < 
DATETIME(
 "2010-07-02T05:54:02" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2012-07-27T01:10:01" )
and gbu.user_since <
DATETIME(
 "2012-07-28T01:10:01" )
;
 

{
	"requestID": "07eead5e-b54a-4deb-8bd0-fd27a93b76f3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/458-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.044120565s",
		"executionTime": "2.043037759s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96724
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2014-06-16T21:55:57" )
AND user.user_since < 
DATETIME(
 "2014-06-17T06:55:57" )
AND msg.send_time >=
DATETIME(
 "2012-12-07T02:46:16" )
AND msg.send_time <
DATETIME(
 "2012-12-08T02:46:16" )
GROUP BY user.id;
;
 

{
	"requestID": "754cd2ff-5f92-4a63-a582-56bbd609e5ac",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/459-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.906677333s",
		"executionTime": "1.906059551s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 179974
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2002-03-16T08:45:17" )
AND user.user_since < 
DATETIME(
 "2002-03-16T17:45:17" )
AND msg.send_time >=
DATETIME(
 "2014-01-20T20:44:34" )
AND msg.send_time <
DATETIME(
 "2014-01-21T20:44:34" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "9d44fa5c-3454-4144-907d-f5ff18b123a4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/460-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.044503968s",
		"executionTime": "4.043462471s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 179930
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-11-26T02:52:34" )
and
gbu.user_since <
DATETIME(
 "2008-11-26T11:52:34" )
and
gbm.send_time >=
DATETIME(
 "2002-01-10T18:56:13" )
and
gbm.send_time <
DATETIME(
 "2002-01-11T18:56:13" )
;
 

{
	"requestID": "4d345333-b79c-480a-a8a2-cefddb6183d9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/461-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.576485326s",
		"executionTime": "6.575447579s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251820
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2014-08-23T17:21:18" )
and gbm.send_time < 
DATETIME(
 "2014-08-24T02:21:18" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-12-06T09:22:10" )
and gbu.user_since <
DATETIME(
 "2003-12-07T09:22:10" )
;
 

{
	"requestID": "3e4b5f15-7881-4195-8126-a3db72cf79b5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/462-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.902696583s",
		"executionTime": "2.901559235s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 200416
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-01-16T14:02:16" )
AND user.user_since < 
DATETIME(
 "2007-01-16T23:02:16" )
AND msg.send_time >=
DATETIME(
 "2010-07-06T08:06:19" )
AND msg.send_time <
DATETIME(
 "2010-07-07T08:06:19" )
GROUP BY user.id;
;
 

{
	"requestID": "81ba0ad1-2e5c-45f4-90ba-9d5ff34a8474",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/463-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.18910597s",
		"executionTime": "1.187789926s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 77048
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2003-09-05T21:36:33" )
AND user.user_since < 
DATETIME(
 "2003-09-06T06:36:33" )
AND msg.send_time >=
DATETIME(
 "2012-10-26T23:27:17" )
AND msg.send_time <
DATETIME(
 "2012-10-27T23:27:17" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "fd6dacfa-7d43-4ff7-b01f-d738434b26b3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/464-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.003076163s",
		"executionTime": "1.001880374s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 73964
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2010-03-25T11:54:05" )
AND cm.send_time <
DATETIME(
 "2010-03-25T20:54:05" )
;
 

{
	"requestID": "a40f828b-23ea-41f5-8107-cb9593eae358",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/465-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.001517283s",
		"executionTime": "5.00081716s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30770
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2013-01-24T23:55:06" )
AND cm.send_time <
DATETIME(
 "2013-01-25T08:55:06" )
group by sentiment(cm.message_text);
 

{
	"requestID": "80f6ee13-d458-415e-bd0d-29332489d30f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/466-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.963812546s",
		"executionTime": "4.962824806s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31054
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("70775131") ;
 

{
	"requestID": "3a7cc364-2930-416a-abfd-af9d4d60b07b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/467-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "14.485213ms",
		"executionTime": "13.935038ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("1407735") AND user.id <= 
 int64("2407735") ;
 

{
	"requestID": "3978ae26-2c73-4097-856c-46a91050146a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/468-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.358874508s",
		"executionTime": "10.358211583s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2008-08-08T15:34:10" )
AND user.user_since <= 
DATETIME(
 "2008-09-15T15:34:10" )
;
 

{
	"requestID": "f8edf5b0-beb5-426f-a357-57e628c193ba",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/469-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.587037982s",
		"executionTime": "11.586148753s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1277186
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2014-04-18T03:50:55" )
AND gbu.user_since <= 
DATETIME(
 "2014-05-26T03:50:55" )
;
 

{
	"requestID": "8f7c95b7-0fbc-409f-a653-2f1791ef1044",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/470-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.02261189s",
		"executionTime": "9.022000866s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1274948
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2007-05-18T17:54:40" )
AND gbu.user_since <= 
DATETIME(
 "2007-06-25T17:54:40" )
;
 

{
	"requestID": "246af801-2bc2-40da-8670-7676bf68e7a8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/471-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.167801156s",
		"executionTime": "4.16679305s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276092
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2005-06-19T03:55:49" )
AND cm.send_time <
DATETIME(
 "2005-07-04T03:55:49" );
 

{
	"requestID": "9290c481-26f3-45b7-abbc-f0fb77f1f286",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/472-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.690367979s",
		"executionTime": "3.689497225s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233386
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2011-11-11T14:08:48" )
AND cm.send_time <
DATETIME(
 "2011-11-26T14:08:48" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "fb22098c-de0a-4380-b971-ae22e405d919",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/473-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.490937182s",
		"executionTime": "5.489978504s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233442
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2009-04-07T17:44:35" )
AND cm.send_time <
DATETIME(
 "2009-04-22T17:44:35" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "056a702e-4f2f-4d6e-b3e7-989db85f3a19",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/474-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.76696382s",
		"executionTime": "4.765961527s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233098
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 37.5376  90.6888 ,
 47.5376  90.6888 ,
 47.5376  100.6888 ,
 37.5376  100.6888 ,
 37.5376  90.6888 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "42f5057a-9ec9-4800-a617-3e88e3fa3744",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/475-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "109.549675095s",
		"executionTime": "109.549046312s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 40226156
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Nexus" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "6f61e253-a3b7-4c94-a328-ccdaaa371968",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/476-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "126.871702993s",
		"executionTime": "126.870821834s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2005-01-26T06:55:26" )
and
gbu.user_since <
DATETIME(
 "2005-03-05T06:55:26" )
and
gbm.send_time >=
DATETIME(
 "2011-02-23T10:29:51" )
and
gbm.send_time <
DATETIME(
 "2011-02-24T10:29:51" )
;
 

{
	"requestID": "1a6fe2f1-1f76-4e10-af6f-c6eb7f16291c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/477-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.951046894s",
		"executionTime": "7.950078334s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446768
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-04-15T05:34:57" )
and gbm.send_time < 
DATETIME(
 "2001-05-23T05:34:57" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2007-02-13T02:17:31" )
and gbu.user_since <
DATETIME(
 "2007-02-14T02:17:31" )
;
 

{
	"requestID": "84fe6b52-68aa-4a76-b132-1f09cf1cfd9f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/478-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "59.554776074s",
		"executionTime": "59.553732785s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6415846
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2011-02-13T21:17:11" )
AND user.user_since < 
DATETIME(
 "2011-03-23T21:17:11" )
AND msg.send_time >=
DATETIME(
 "2001-08-17T16:43:37" )
AND msg.send_time <
DATETIME(
 "2001-08-18T16:43:37" )
GROUP BY user.id;
;
 

{
	"requestID": "1691ee39-8b04-41c8-9649-1b15663ac585",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/479-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.681539403s",
		"executionTime": "9.680436627s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446834
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2009-02-25T10:22:51" )
AND user.user_since < 
DATETIME(
 "2009-04-04T10:22:51" )
AND msg.send_time >=
DATETIME(
 "2014-05-03T18:22:53" )
AND msg.send_time <
DATETIME(
 "2014-05-04T18:22:53" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "baf100d7-d39a-40f2-a5ac-47364d413dfa",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/480-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.296135079s",
		"executionTime": "3.294858118s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1445072
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-04-24T03:41:53" )
and
gbu.user_since <
DATETIME(
 "2007-06-01T03:41:53" )
and
gbm.send_time >=
DATETIME(
 "2011-06-22T15:17:31" )
and
gbm.send_time <
DATETIME(
 "2011-06-23T15:17:31" )
;
 

{
	"requestID": "10e842b1-d2d2-4c66-921a-24c034ecac71",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/481-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.086169419s",
		"executionTime": "1.084947091s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251448
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-08-10T01:07:23" )
and gbm.send_time < 
DATETIME(
 "2004-09-17T01:07:23" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2011-11-18T01:28:51" )
and gbu.user_since <
DATETIME(
 "2011-11-19T01:28:51" )
;
 

{
	"requestID": "92517c72-7dc7-42ab-b53f-d963bc1ec696",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/482-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.917525868s",
		"executionTime": "1.916444908s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 200438
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2004-05-13T07:53:06" )
AND user.user_since < 
DATETIME(
 "2004-06-20T07:53:06" )
AND msg.send_time >=
DATETIME(
 "2009-10-17T06:18:17" )
AND msg.send_time <
DATETIME(
 "2009-10-18T06:18:17" )
GROUP BY user.id;
;
 

{
	"requestID": "31b12640-a1c5-4ada-9f19-d2c6a9ef8f9f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/483-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.363588825s",
		"executionTime": "19.362337451s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7667418
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2011-12-07T19:50:35" )
AND user.user_since < 
DATETIME(
 "2012-01-14T19:50:35" )
AND msg.send_time >=
DATETIME(
 "2012-06-27T14:52:16" )
AND msg.send_time <
DATETIME(
 "2012-06-28T14:52:16" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "b55a92fb-61c5-44d8-ab46-798982c24d54",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/484-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.003473063s",
		"executionTime": "16.001899874s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7661696
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2007-08-17T04:23:36" )
AND cm.send_time <
DATETIME(
 "2007-09-24T04:23:36" )
;
 

{
	"requestID": "70d1f147-5b31-4c43-9fbd-0471f4da71c1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/485-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "482.791819797s",
		"executionTime": "482.790639539s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3121528
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2008-12-12T06:48:45" )
AND cm.send_time <
DATETIME(
 "2009-01-19T06:48:45" )
group by sentiment(cm.message_text);
 

{
	"requestID": "230bf3de-83f2-478b-8d0a-cef812ccc0d3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/486-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "448.035069783s",
		"executionTime": "448.033803234s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3125260
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("72437812") ;
 

{
	"requestID": "8265d01b-4c75-4614-80b3-fe71aa42b750",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/487-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.06333ms",
		"executionTime": "23.143437ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("5639253") AND user.id <= 
 int64("5639353") ;
 

{
	"requestID": "d0c909ac-4b31-49ac-9b6a-d05843b411b6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/488-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.058975ms",
		"executionTime": "18.343097ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2004-09-01T07:30:12" )
AND user.user_since <= 
DATETIME(
 "2004-09-01T07:35:12" )
;
 

{
	"requestID": "00b8013d-ef33-4640-8550-3ac330fb9897",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/489-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "38.305637ms",
		"executionTime": "37.474577ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 108
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
 "2014-06-22T11:35:49" )
AND gbu.user_since <= 
DATETIME(
 "2014-06-22T11:40:49" )
;
 

{
	"requestID": "7330f5d3-ad70-45ea-8767-9d0a536254c6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/490-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "41.917688ms",
		"executionTime": "40.549523ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 158
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
 "2010-01-26T17:55:23" )
AND gbu.user_since <= 
DATETIME(
 "2010-01-26T18:00:23" )
;
 

{
	"requestID": "a1a57de7-def9-43cf-a103-95401c8ae909",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/491-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "37.86516ms",
		"executionTime": "36.942472ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 122
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2009-04-28T08:01:28" )
AND cm.send_time <
DATETIME(
 "2009-04-28T08:03:58" );
 

{
	"requestID": "4f75472c-a356-4fd9-8be0-1b3bc8180489",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/492-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "31.997055ms",
		"executionTime": "31.036003ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 140
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-10-08T23:04:21" )
AND cm.send_time <
DATETIME(
 "2006-10-08T23:06:51" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "e69f77f1-92e4-4009-ae18-ac207c0d0aa9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/493-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "40.846347ms",
		"executionTime": "39.880705ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 134
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-08-28T12:19:44" )
AND cm.send_time <
DATETIME(
 "2000-08-28T12:22:14" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "b5ca14a1-9b2e-42e8-b7b6-93faa564ebdf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/494-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "47.345375ms",
		"executionTime": "46.410546ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 112
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 36.6641  88.3221 ,
 36.674099999999996  88.3221 ,
 36.674099999999996  88.33210000000001 ,
 36.6641  88.33210000000001 ,
 36.6641  88.3221 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "9dcc0bca-bdab-48d6-8c63-b75e1a675c69",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/495-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "30.971596ms",
		"executionTime": "30.137814ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 50
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
	"requestID": "74aacaf3-fbb5-421b-838f-1e2944ccafc1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/496-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.707721558s",
		"executionTime": "129.706912297s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2002-01-22T23:45:23" )
and
gbu.user_since <
DATETIME(
 "2002-01-22T23:50:23" )
and
gbm.send_time >=
DATETIME(
 "2008-02-18T08:52:11" )
and
gbm.send_time <
DATETIME(
 "2008-02-19T08:52:11" )
;
 

{
	"requestID": "d05992ca-7323-41a0-89a5-d48b6b849057",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/497-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.198189593s",
		"executionTime": "3.196916602s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167814
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2000-10-28T06:28:12" )
and gbm.send_time < 
DATETIME(
 "2000-10-28T06:33:12" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-01-28T06:55:15" )
and gbu.user_since <
DATETIME(
 "2003-01-29T06:55:15" )
;
 

{
	"requestID": "d4e99313-98c2-46fa-a2d3-500905f40a23",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/498-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.370899196s",
		"executionTime": "1.369878937s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34188
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
 "2001-03-03T03:27:36" )
AND user.user_since < 
DATETIME(
 "2001-03-03T03:32:36" )
AND msg.send_time >=
DATETIME(
 "2012-10-11T14:17:10" )
AND msg.send_time <
DATETIME(
 "2012-10-12T14:17:10" )
GROUP BY user.id;
;
 

{
	"requestID": "ecd8fda2-e597-4756-9bf8-4189c3c27f54",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/499-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.39598767s",
		"executionTime": "3.39499267s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 169476
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
 "2008-08-15T07:49:17" )
AND user.user_since < 
DATETIME(
 "2008-08-15T07:54:17" )
AND msg.send_time >=
DATETIME(
 "2010-07-18T20:43:49" )
AND msg.send_time <
DATETIME(
 "2010-07-19T20:43:49" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "4d87ba3c-b19d-401c-a661-089ffd245d17",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/500-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.28067897s",
		"executionTime": "3.279615008s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168002
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2014-02-20T01:28:15" )
and
gbu.user_since <
DATETIME(
 "2014-02-20T01:33:15" )
and
gbm.send_time >=
DATETIME(
 "2000-01-06T17:24:57" )
and
gbm.send_time <
DATETIME(
 "2000-01-07T17:24:57" )
;
 

{
	"requestID": "5a4a691b-47a5-4dd0-b3f4-e3247d548a70",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/501-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.596146565s",
		"executionTime": "7.595144318s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251523
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2001-08-03T12:08:47" )
and gbm.send_time < 
DATETIME(
 "2001-08-03T12:13:47" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2007-03-23T01:30:47" )
and gbu.user_since <
DATETIME(
 "2007-03-24T01:30:47" )
;
 

{
	"requestID": "3c2ce2dd-aa98-4dab-b6ba-a80bd56c04ea",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/502-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.183490202s",
		"executionTime": "2.182103115s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 201410
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-01-14T17:21:41" )
AND user.user_since < 
DATETIME(
 "2013-01-14T17:26:41" )
AND msg.send_time >=
DATETIME(
 "2004-10-23T14:17:38" )
AND msg.send_time <
DATETIME(
 "2004-10-24T14:17:38" )
GROUP BY user.id;
;
 

{
	"requestID": "c182701d-9204-496b-8242-fe105ac0f3b7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/503-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "64.985151ms",
		"executionTime": "63.903624ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 756
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2006-06-05T23:00:52" )
AND user.user_since < 
DATETIME(
 "2006-06-05T23:05:52" )
AND msg.send_time >=
DATETIME(
 "2014-03-17T19:13:04" )
AND msg.send_time <
DATETIME(
 "2014-03-18T19:13:04" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "d3dcf546-fe7a-4699-b019-621650cd7bf1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/504-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "69.535579ms",
		"executionTime": "68.406135ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 646
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-06-06T11:34:21" )
AND cm.send_time <
DATETIME(
 "2009-06-06T11:39:21" )
;
 

{
	"requestID": "3cc1b259-41a7-497e-8277-9bf0a61abf6a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/505-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "602.343484ms",
		"executionTime": "601.351056ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 258
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2009-10-28T16:28:18" )
AND cm.send_time <
DATETIME(
 "2009-10-28T16:33:18" )
group by sentiment(cm.message_text);
 

{
	"requestID": "5f5c2853-14ee-4f7d-93d7-9a3e1a65ecff",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/506-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "629.00749ms",
		"executionTime": "628.056732ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 308
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("66662791") ;
 

{
	"requestID": "c07f7f9b-4309-4768-999f-81e44336204e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/507-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.352885ms",
		"executionTime": "17.569099ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("6306083") AND user.id <= 
 int64("6316083") ;
 

{
	"requestID": "5b22674b-d659-4d10-8ac7-b16e9de60dd6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/508-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "141.006348ms",
		"executionTime": "140.22176ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2004-08-04T10:07:04" )
AND user.user_since <= 
DATETIME(
 "2004-08-04T19:07:04" )
;
 

{
	"requestID": "c5c65b59-0725-42e7-b07d-a8f3bf88cbbc",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/509-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "345.18106ms",
		"executionTime": "344.40127ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12492
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2013-11-23T22:00:02" )
AND gbu.user_since <= 
DATETIME(
 "2013-11-24T07:00:02" )
;
 

{
	"requestID": "7c727415-8df4-465c-846d-f1f29e5da7d6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/510-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "363.646719ms",
		"executionTime": "362.771088ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12578
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2002-06-17T19:52:21" )
AND gbu.user_since <= 
DATETIME(
 "2002-06-18T04:52:21" )
;
 

{
	"requestID": "0278928e-237d-4936-aa5b-8311276b8361",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/511-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "309.277039ms",
		"executionTime": "308.249537ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12748
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-07-03T15:34:26" )
AND cm.send_time <
DATETIME(
 "2001-07-03T19:19:26" );
 

{
	"requestID": "04480531-b361-4872-a2b5-3aa1db0727da",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/512-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "85.354494ms",
		"executionTime": "83.7847ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12858
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-06-15T13:10:46" )
AND cm.send_time <
DATETIME(
 "2006-06-15T16:55:46" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "3529b06d-25ed-4aa8-800f-3405e50db6fa",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/513-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "112.547914ms",
		"executionTime": "110.725024ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12720
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2000-12-14T07:20:46" )
AND cm.send_time <
DATETIME(
 "2000-12-14T11:05:46" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "fd6a4f00-7e83-4647-9ed5-203b13f28750",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/514-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "118.079366ms",
		"executionTime": "116.639555ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 13020
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 35.5335  74.8634 ,
 35.6335  74.8634 ,
 35.6335  74.9634 ,
 35.5335  74.9634 ,
 35.5335  74.8634 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "08f6a81b-6e1a-4fab-b8c8-8f666ec60c75",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/515-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "71.728808ms",
		"executionTime": "70.869707ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5672
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Kindle" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "8a8f87a3-8de1-4df7-8462-aaae8dc31900",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/516-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "129.171813621s",
		"executionTime": "129.171142462s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-11-10T03:25:46" )
and
gbu.user_since <
DATETIME(
 "2001-11-10T12:25:46" )
and
gbm.send_time >=
DATETIME(
 "2007-07-18T15:28:09" )
and
gbm.send_time <
DATETIME(
 "2007-07-19T15:28:09" )
;
 

{
	"requestID": "5adf5609-65cb-4522-a869-d95cbf62fe7f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/517-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.500586098s",
		"executionTime": "4.499734537s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 178810
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-01-07T17:37:13" )
and gbm.send_time < 
DATETIME(
 "2010-01-08T02:37:13" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-03-23T17:54:47" )
and gbu.user_since <
DATETIME(
 "2003-03-24T17:54:47" )
;
 

{
	"requestID": "78db048d-53e7-44a4-b599-d9c57915ab04",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/518-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.949818698s",
		"executionTime": "1.948941885s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 96520
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2005-04-09T21:05:16" )
AND user.user_since < 
DATETIME(
 "2005-04-10T06:05:16" )
AND msg.send_time >=
DATETIME(
 "2013-02-05T08:49:37" )
AND msg.send_time <
DATETIME(
 "2013-02-06T08:49:37" )
GROUP BY user.id;
;
 

{
	"requestID": "32c4ec39-5b21-4560-bd54-6b2952ad4d8c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/519-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.084391363s",
		"executionTime": "4.083528915s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180532
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2011-06-23T15:11:05" )
AND user.user_since < 
DATETIME(
 "2011-06-24T00:11:05" )
AND msg.send_time >=
DATETIME(
 "2002-08-25T08:29:27" )
AND msg.send_time <
DATETIME(
 "2002-08-26T08:29:27" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "e24d2627-9b3d-4952-b940-1131b7d55d61",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/520-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.991654538s",
		"executionTime": "3.990753888s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180472
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-08-19T05:56:39" )
and
gbu.user_since <
DATETIME(
 "2008-08-19T14:56:39" )
and
gbm.send_time >=
DATETIME(
 "2004-04-01T06:15:19" )
and
gbm.send_time <
DATETIME(
 "2004-04-02T06:15:19" )
;
 

{
	"requestID": "b0f52f58-1baa-4a94-be8a-17b76831455f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/521-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.450423868s",
		"executionTime": "6.449847993s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 251610
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2006-07-14T17:39:30" )
and gbm.send_time < 
DATETIME(
 "2006-07-15T02:39:30" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2005-04-22T20:52:55" )
and gbu.user_since <
DATETIME(
 "2005-04-23T20:52:55" )
;
 

{
	"requestID": "ec881a89-766b-43ca-91b2-71bb88677ce0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/522-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.819522009s",
		"executionTime": "2.818971311s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 204398
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2007-06-28T12:19:22" )
AND user.user_since < 
DATETIME(
 "2007-06-28T21:19:22" )
AND msg.send_time >=
DATETIME(
 "2003-07-24T18:56:46" )
AND msg.send_time <
DATETIME(
 "2003-07-25T18:56:46" )
GROUP BY user.id;
;
 

{
	"requestID": "e0e26758-65ff-4cea-8083-971ecef010e2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/523-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.062226817s",
		"executionTime": "1.061294461s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 74130
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-01-02T08:06:28" )
AND user.user_since < 
DATETIME(
 "2013-01-02T17:06:28" )
AND msg.send_time >=
DATETIME(
 "2002-01-28T01:18:34" )
AND msg.send_time <
DATETIME(
 "2002-01-29T01:18:34" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "7e8409c7-ca98-41f3-9f0c-7da1cb3b879c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/524-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.06235584s",
		"executionTime": "1.061313066s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 75638
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2007-09-14T04:12:15" )
AND cm.send_time <
DATETIME(
 "2007-09-14T13:12:15" )
;
 

{
	"requestID": "5a87097f-a9a9-422b-a3aa-23f2c2532782",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/525-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.023851957s",
		"executionTime": "5.022764252s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30444
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2006-08-13T10:12:46" )
AND cm.send_time <
DATETIME(
 "2006-08-13T19:12:46" )
group by sentiment(cm.message_text);
 

{
	"requestID": "a2e02fc8-942a-4adf-af66-ac9682fb2a82",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/526-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.743019922s",
		"executionTime": "4.742237558s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30632
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("82358536") ;
 

{
	"requestID": "deb410c5-9de1-4153-af89-84ff6036aff0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/527-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.021136ms",
		"executionTime": "17.379745ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("9246526") AND user.id <= 
 int64("10246526") ;
 

{
	"requestID": "2e294deb-2542-4b26-8685-f895b6b1c155",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/528-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.537369525s",
		"executionTime": "10.536551627s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2001-01-05T16:48:17" )
AND user.user_since <= 
DATETIME(
 "2001-02-12T16:48:17" )
;
 

{
	"requestID": "4ee0defc-bde0-45c2-9f88-0676f57adeb5",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/529-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.737560362s",
		"executionTime": "11.736804986s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276872
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2008-09-11T08:53:11" )
AND gbu.user_since <= 
DATETIME(
 "2008-10-19T08:53:11" )
;
 

{
	"requestID": "2e9b10a5-98ff-46cd-87f6-eb3af3a6f550",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/530-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "8.130860844s",
		"executionTime": "8.130063765s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1275416
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2001-12-13T21:08:20" )
AND gbu.user_since <= 
DATETIME(
 "2002-01-20T21:08:20" )
;
 

{
	"requestID": "8926fbbc-2aec-4d24-8d05-cb74f35294e1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/531-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.379202239s",
		"executionTime": "4.378418428s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1277086
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2002-01-01T20:42:45" )
AND cm.send_time <
DATETIME(
 "2002-01-16T20:42:45" );
 

{
	"requestID": "c5a8db04-3044-4fa8-8eae-69d96c2736ec",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/532-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.823828128s",
		"executionTime": "5.82312055s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1231070
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2001-04-20T03:06:19" )
AND cm.send_time <
DATETIME(
 "2001-05-05T03:06:19" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "fedbbeb1-afa7-4b9b-9ad0-bcf40f725d20",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/533-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.436295748s",
		"executionTime": "5.435790825s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232818
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2010-11-17T08:06:17" )
AND cm.send_time <
DATETIME(
 "2010-12-02T08:06:17" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "ca420ac2-f1a0-4c93-8ad0-955d7b7a1984",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/534-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.850065465s",
		"executionTime": "4.849196058s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232944
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 45.1761  75.7217 ,
 55.1761  75.7217 ,
 55.1761  85.7217 ,
 45.1761  85.7217 ,
 45.1761  75.7217 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "1152b562-a70d-49df-abe3-aaa567425197",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/535-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "57.985208959s",
		"executionTime": "57.984657676s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 21038210
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Surface" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "fe2b3a5d-2e4c-46bb-a3df-3be12804b981",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/536-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "125.837243009s",
		"executionTime": "125.836300771s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2007-02-17T04:39:00" )
and
gbu.user_since <
DATETIME(
 "2007-03-27T04:39:00" )
and
gbm.send_time >=
DATETIME(
 "2013-01-09T01:27:42" )
and
gbm.send_time <
DATETIME(
 "2013-01-10T01:27:42" )
;
 

{
	"requestID": "b6d573c6-f9ce-48d8-b2ae-8880c93b9a34",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/537-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.636117447s",
		"executionTime": "7.634432698s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444636
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-03-12T10:24:41" )
and gbm.send_time < 
DATETIME(
 "2004-04-19T10:24:41" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2007-04-05T08:07:04" )
and gbu.user_since <
DATETIME(
 "2007-04-06T08:07:04" )
;
 

{
	"requestID": "faf6ee63-2227-4403-9c63-739a9bd04e04",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/538-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.346484089s",
		"executionTime": "60.345468935s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6419096
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2002-06-21T15:57:21" )
AND user.user_since < 
DATETIME(
 "2002-07-29T15:57:21" )
AND msg.send_time >=
DATETIME(
 "2010-02-20T08:47:38" )
AND msg.send_time <
DATETIME(
 "2010-02-21T08:47:38" )
GROUP BY user.id;
;
 

{
	"requestID": "0b4ab869-c6e1-477c-875f-ff1df2d61b3e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/539-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.168477484s",
		"executionTime": "9.167425663s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446626
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2014-05-06T13:45:46" )
AND user.user_since < 
DATETIME(
 "2014-06-13T13:45:46" )
AND msg.send_time >=
DATETIME(
 "2005-07-14T18:12:17" )
AND msg.send_time <
DATETIME(
 "2005-07-15T18:12:17" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "74d7fb25-1b36-400d-90ef-a92147f33c96",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/540-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.939876735s",
		"executionTime": "2.939091236s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1445792
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2002-09-08T20:07:22" )
and
gbu.user_since <
DATETIME(
 "2002-10-16T20:07:22" )
and
gbm.send_time >=
DATETIME(
 "2013-06-02T09:14:57" )
and
gbm.send_time <
DATETIME(
 "2013-06-03T09:14:57" )
;
 

{
	"requestID": "35f15c61-2c1f-445b-bb84-4e5ee3a5ca8d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/541-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "930.152962ms",
		"executionTime": "928.917333ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252132
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2000-08-14T15:13:56" )
and gbm.send_time < 
DATETIME(
 "2000-09-21T15:13:56" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2000-09-17T16:46:56" )
and gbu.user_since <
DATETIME(
 "2000-09-18T16:46:56" )
;
 

{
	"requestID": "5b57cad3-cb8b-43e5-8fa2-ab6b35faad14",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/542-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.692856717s",
		"executionTime": "1.691804412s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202058
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2010-07-21T09:51:20" )
AND user.user_since < 
DATETIME(
 "2010-08-28T09:51:20" )
AND msg.send_time >=
DATETIME(
 "2009-09-04T06:32:46" )
AND msg.send_time <
DATETIME(
 "2009-09-05T06:32:46" )
GROUP BY user.id;
;
 

{
	"requestID": "137801ce-2689-42bb-9475-acfb005ec8a3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/543-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.769507913s",
		"executionTime": "18.768853314s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7663540
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2013-11-03T23:13:21" )
AND user.user_since < 
DATETIME(
 "2013-12-11T23:13:21" )
AND msg.send_time >=
DATETIME(
 "2008-04-15T23:35:42" )
AND msg.send_time <
DATETIME(
 "2008-04-16T23:35:42" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "6a999d0c-ee13-4384-a7c4-7ddce58ee6fb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/544-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.967693894s",
		"executionTime": "16.966583263s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7650772
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2010-12-18T18:31:50" )
AND cm.send_time <
DATETIME(
 "2011-01-25T18:31:50" )
;
 

{
	"requestID": "2559fe33-63bb-4183-8afa-440f122c38ae",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/545-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "475.760396323s",
		"executionTime": "475.759075562s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3121346
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2014-07-04T00:31:30" )
AND cm.send_time <
DATETIME(
 "2014-08-11T00:31:30" )
group by sentiment(cm.message_text);
 

{
	"requestID": "feeb3092-fd56-49fa-88fa-3e72feddd0e1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/546-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "463.942809577s",
		"executionTime": "463.941884156s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3119868
	}
}

101
Ver 1
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("80385050") ;
 

{
	"requestID": "cb84d9ae-1c12-437b-9995-f620bc23106a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/547-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.417618ms",
		"executionTime": "23.681722ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("8270829") AND user.id <= 
 int64("8270929") ;
 

{
	"requestID": "03e6cc51-6bb0-445e-a535-689fa3bcf5fd",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/548-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "24.309128ms",
		"executionTime": "23.291376ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 101
	}
}

103
Ver 1
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2002-01-01T14:34:45" )
AND user.user_since <= 
DATETIME(
 "2002-01-01T14:39:45" )
;
 

{
	"requestID": "fecf1c04-59e8-4127-bacf-389eb7f285f9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/549-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "41.552891ms",
		"executionTime": "40.745353ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 124
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
 "2009-04-23T10:27:12" )
AND gbu.user_since <= 
DATETIME(
 "2009-04-23T10:32:12" )
;
 

{
	"requestID": "b32e24f2-d9e9-4a5c-93f7-4f820dae49b3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/550-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "42.899413ms",
		"executionTime": "42.034083ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 124
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
 "2014-08-25T03:11:33" )
AND gbu.user_since <= 
DATETIME(
 "2014-08-25T03:16:33" )
;
 

{
	"requestID": "ba8335d3-5820-4b40-a898-a6ba77b582c3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/551-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "43.454541ms",
		"executionTime": "42.615571ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 112
	}
}

106
Ver 1
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2004-06-26T08:36:24" )
AND cm.send_time <
DATETIME(
 "2004-06-26T08:38:54" );
 

{
	"requestID": "e49a172b-5279-48ba-afaa-610b65b00bb1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/552-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "33.758692ms",
		"executionTime": "32.979412ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 166
	}
}

107
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2006-03-15T05:46:33" )
AND cm.send_time <
DATETIME(
 "2006-03-15T05:49:03" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "d6f9ffac-b78d-4aa3-9b51-2b287af52346",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/553-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "43.391589ms",
		"executionTime": "42.506526ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 162
	}
}

108
Ver 1
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2013-04-25T06:03:35" )
AND cm.send_time <
DATETIME(
 "2013-04-25T06:06:05" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "3ccfc72a-66b9-4008-a9ee-cb350b2b1532",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/554-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "49.172011ms",
		"executionTime": "48.274263ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 148
	}
}

109
Ver 1
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 31.468  89.8111 ,
 31.478  89.8111 ,
 31.478  89.8211 ,
 31.468  89.8211 ,
 31.468  89.8111 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "fcfa8d8b-0d7b-4ee9-b5f8-ec4f2cb91b06",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/555-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "33.138614ms",
		"executionTime": "32.298337ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 52
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
	"requestID": "0c3de899-6bfd-4408-9bef-f2e0e7a6311b",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/556-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "133.172421496s",
		"executionTime": "133.17156513s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-12-06T01:12:08" )
and
gbu.user_since <
DATETIME(
 "2004-12-06T01:17:08" )
and
gbm.send_time >=
DATETIME(
 "2013-05-14T16:53:19" )
and
gbm.send_time <
DATETIME(
 "2013-05-15T16:53:19" )
;
 

{
	"requestID": "33196b87-0e54-41c8-81f3-3b98575d93f4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/557-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.13672062s",
		"executionTime": "3.135789729s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168026
	}
}

1013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-02-01T07:34:11" )
and gbm.send_time < 
DATETIME(
 "2004-02-01T07:39:11" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2008-05-18T21:42:44" )
and gbu.user_since <
DATETIME(
 "2008-05-19T21:42:44" )
;
 

{
	"requestID": "56c3ebda-2055-463f-a856-63de01f50bd0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/558-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.195708577s",
		"executionTime": "1.1946971s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 34210
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
 "2009-11-28T18:27:03" )
AND user.user_since < 
DATETIME(
 "2009-11-28T18:32:03" )
AND msg.send_time >=
DATETIME(
 "2014-02-05T14:32:26" )
AND msg.send_time <
DATETIME(
 "2014-02-06T14:32:26" )
GROUP BY user.id;
;
 

{
	"requestID": "2a52d520-06ef-4c79-acb8-f272cca576a1",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/559-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.02913949s",
		"executionTime": "3.028178576s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 167990
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
 "2002-07-24T18:33:17" )
AND user.user_since < 
DATETIME(
 "2002-07-24T18:38:17" )
AND msg.send_time >=
DATETIME(
 "2011-09-04T06:34:38" )
AND msg.send_time <
DATETIME(
 "2011-09-05T06:34:38" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "d062912f-d6a6-4a2a-a5ef-677997b6f30e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/560-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.009065135s",
		"executionTime": "3.008382134s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 168010
	}
}

2012
Ver 1
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2004-05-16T11:40:01" )
and
gbu.user_since <
DATETIME(
 "2004-05-16T11:45:01" )
and
gbm.send_time >=
DATETIME(
 "2011-01-01T02:15:05" )
and
gbm.send_time <
DATETIME(
 "2011-01-02T02:15:05" )
;
 

{
	"requestID": "cdbe4cdf-9900-4590-975a-063d36b0abc2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/561-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.63751213s",
		"executionTime": "7.63656979s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 250950
	}
}

2013
Ver 1
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-09-05T10:13:12" )
and gbm.send_time < 
DATETIME(
 "2004-09-05T10:18:12" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2010-06-21T23:41:01" )
and gbu.user_since <
DATETIME(
 "2010-06-22T23:41:01" )
;
 

{
	"requestID": "f1a0b6bd-05a0-454f-b3c6-f0eb619e0e5c",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/562-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.367411973s",
		"executionTime": "2.366382993s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 201588
	}
}

2014
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2012-09-04T15:56:57" )
AND user.user_since < 
DATETIME(
 "2012-09-04T16:01:57" )
AND msg.send_time >=
DATETIME(
 "2003-01-27T15:05:24" )
AND msg.send_time <
DATETIME(
 "2003-01-28T15:05:24" )
GROUP BY user.id;
;
 

{
	"requestID": "6aace387-eb31-4248-9785-9c91f4c4bb63",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/563-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "73.331488ms",
		"executionTime": "72.234747ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 752
	}
}

2015
Ver 1
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2011-11-23T18:55:24" )
AND user.user_since < 
DATETIME(
 "2011-11-23T19:00:24" )
AND msg.send_time >=
DATETIME(
 "2009-02-27T05:34:48" )
AND msg.send_time <
DATETIME(
 "2009-02-28T05:34:48" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "8bb6c2db-c0d7-4f0c-b178-bac61dfe6f07",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/564-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "78.579651ms",
		"executionTime": "77.542021ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 654
	}
}

1017
Ver 1
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2009-08-17T19:03:51" )
AND cm.send_time <
DATETIME(
 "2009-08-17T19:08:51" )
;
 

{
	"requestID": "e16c43e3-82d0-480a-b5b4-ac15af22ec92",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/565-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "611.943477ms",
		"executionTime": "611.088583ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 312
	}
}

1018
Ver 1
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2008-12-08T08:33:20" )
AND cm.send_time <
DATETIME(
 "2008-12-08T08:38:20" )
group by sentiment(cm.message_text);
 

{
	"requestID": "2808eb62-ea27-46e9-bf6d-e0d4864ead04",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/566-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "642.192428ms",
		"executionTime": "641.352101ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 272
	}
}

101
Ver 2
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("81523409") ;
 

{
	"requestID": "de1ae08a-1e21-4825-b9ff-8421ad7b2013",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/567-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "18.172253ms",
		"executionTime": "17.356892ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("603376") AND user.id <= 
 int64("613376") ;
 

{
	"requestID": "89634c92-5730-4e5b-984e-af576a8c4eee",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/568-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "143.52243ms",
		"executionTime": "142.829207ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 10001
	}
}

103
Ver 2
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2012-09-25T01:35:21" )
AND user.user_since <= 
DATETIME(
 "2012-09-25T10:35:21" )
;
 

{
	"requestID": "92668c74-8a6c-4d37-afd3-99d508889a59",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/569-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "333.74962ms",
		"executionTime": "333.279284ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12744
	}
}

104
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2000-02-08T10:36:55" )
AND gbu.user_since <= 
DATETIME(
 "2000-02-08T19:36:55" )
;
 

{
	"requestID": "3def5606-2654-40ff-a38d-9207b99ac129",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/570-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "333.211458ms",
		"executionTime": "332.372872ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12506
	}
}

105
Ver 2
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2002-03-27T00:30:26" )
AND gbu.user_since <= 
DATETIME(
 "2002-03-27T09:30:26" )
;
 

{
	"requestID": "252ed20e-37b0-4099-9ff5-461a0b0051eb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/571-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "302.02504ms",
		"executionTime": "301.438578ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12768
	}
}

106
Ver 2
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2004-01-24T20:24:14" )
AND cm.send_time <
DATETIME(
 "2004-01-25T00:09:14" );
 

{
	"requestID": "ec538b9f-6be0-44f9-8412-aa00fbc3b3d8",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/572-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "94.887337ms",
		"executionTime": "94.098787ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12862
	}
}

107
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-02-13T12:19:35" )
AND cm.send_time <
DATETIME(
 "2012-02-13T16:04:35" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "953720e8-100a-48f1-b578-0e9abfa86311",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/573-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "130.557371ms",
		"executionTime": "129.68447ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12934
	}
}

108
Ver 2
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2014-08-08T05:19:52" )
AND cm.send_time <
DATETIME(
 "2014-08-08T09:04:52" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "f369d831-46a0-4d7e-915b-32956eca7df7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/574-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "128.40181ms",
		"executionTime": "127.368378ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 12832
	}
}

109
Ver 2
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 24.9493  73.2498 ,
 25.049300000000002  73.2498 ,
 25.049300000000002  73.34979999999999 ,
 24.9493  73.34979999999999 ,
 24.9493  73.2498 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "303519b0-6cc1-439e-b470-43375baeb004",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/575-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "72.806722ms",
		"executionTime": "71.942923ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 5424
	}
}

1010
Ver 2
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Galaxy" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "ebe9050a-3115-4439-b32d-4ec2a36ad74d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/576-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "130.396780585s",
		"executionTime": "130.395956321s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2008-06-03T16:05:06" )
and
gbu.user_since <
DATETIME(
 "2008-06-04T01:05:06" )
and
gbm.send_time >=
DATETIME(
 "2009-03-11T07:33:39" )
and
gbm.send_time <
DATETIME(
 "2009-03-12T07:33:39" )
;
 

{
	"requestID": "264cf5ca-d3d6-4038-a0f9-afe0e118936e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/577-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.072414634s",
		"executionTime": "4.071492311s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 180556
	}
}

1013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2004-11-13T17:39:39" )
and gbm.send_time < 
DATETIME(
 "2004-11-14T02:39:39" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2002-05-14T19:57:11" )
and gbu.user_since <
DATETIME(
 "2002-05-15T19:57:11" )
;
 

{
	"requestID": "6a07bdeb-3789-4ee7-80bd-8c0ff14b8157",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/578-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.999469786s",
		"executionTime": "1.998626185s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 97142
	}
}

1014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2007-04-17T07:04:41" )
AND user.user_since < 
DATETIME(
 "2007-04-17T16:04:41" )
AND msg.send_time >=
DATETIME(
 "2013-01-12T02:29:44" )
AND msg.send_time <
DATETIME(
 "2013-01-13T02:29:44" )
GROUP BY user.id;
;
 

{
	"requestID": "89fef1d6-3517-479d-a7c8-43644b2514d3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/579-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.012551522s",
		"executionTime": "4.011597269s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 179716
	}
}

1015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2006-05-26T11:10:23" )
AND user.user_since < 
DATETIME(
 "2006-05-26T20:10:23" )
AND msg.send_time >=
DATETIME(
 "2008-03-01T20:21:23" )
AND msg.send_time <
DATETIME(
 "2008-03-02T20:21:23" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "9414f4b6-21a9-4504-bfb7-66a04bfd71d7",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/580-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.916842288s",
		"executionTime": "3.915975493s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 179984
	}
}

2012
Ver 2
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-08-27T07:26:07" )
and
gbu.user_since <
DATETIME(
 "2012-08-27T16:26:07" )
and
gbm.send_time >=
DATETIME(
 "2013-07-22T02:39:28" )
and
gbm.send_time <
DATETIME(
 "2013-07-23T02:39:28" )
;
 

{
	"requestID": "4f4e7f83-fee3-4e4c-8d7b-c5e2afe08d2a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/581-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.473696557s",
		"executionTime": "6.472839988s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252735
	}
}

2013
Ver 2
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2013-04-02T09:36:50" )
and gbm.send_time < 
DATETIME(
 "2013-04-02T18:36:50" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2003-08-28T00:03:39" )
and gbu.user_since <
DATETIME(
 "2003-08-29T00:03:39" )
;
 

{
	"requestID": "31441025-5c7d-405c-8e82-2266bba763ff",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/582-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "2.805935009s",
		"executionTime": "2.805060537s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 200670
	}
}

2014
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2009-01-26T06:40:44" )
AND user.user_since < 
DATETIME(
 "2009-01-26T15:40:44" )
AND msg.send_time >=
DATETIME(
 "2011-01-25T08:49:51" )
AND msg.send_time <
DATETIME(
 "2011-01-26T08:49:51" )
GROUP BY user.id;
;
 

{
	"requestID": "d4e6eb38-c44f-4d16-973b-4bdeb4d81d74",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/583-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.165147974s",
		"executionTime": "1.164261169s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 77574
	}
}

2015
Ver 2
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2012-03-05T15:08:29" )
AND user.user_since < 
DATETIME(
 "2012-03-06T00:08:29" )
AND msg.send_time >=
DATETIME(
 "2010-04-21T00:02:03" )
AND msg.send_time <
DATETIME(
 "2010-04-22T00:02:03" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "62e9f804-af7b-4e46-97c6-1ba45aaf216f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/584-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.031379961s",
		"executionTime": "1.030363119s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 76106
	}
}

1017
Ver 2
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2004-05-26T02:42:12" )
AND cm.send_time <
DATETIME(
 "2004-05-26T11:42:12" )
;
 

{
	"requestID": "c0d23cd9-e844-464d-81ac-564608cfd9b9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/585-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.991208762s",
		"executionTime": "4.990315619s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 30738
	}
}

1018
Ver 2
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2003-10-27T08:34:19" )
AND cm.send_time <
DATETIME(
 "2003-10-27T17:34:19" )
group by sentiment(cm.message_text);
 

{
	"requestID": "c3620128-cdb7-4c2b-8490-1f00aaecacaf",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/586-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.913794347s",
		"executionTime": "4.913022035s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 31154
	}
}

101
Ver 3
USE bigfun;
SELECT VALUE user from GleambookUsers user 
where user.id = 
 int64("78875926") ;
 

{
	"requestID": "5e65c86d-def7-436e-af17-867c9e0cb2b3",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/587-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "16.896472ms",
		"executionTime": "16.232876ms",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1
	}
}

102
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.id >= 
 int64("51156907") AND user.id <= 
 int64("52156907") ;
 

{
	"requestID": "3f3659d5-9ddd-4c7e-8fe6-d6442f0a8c93",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/588-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "10.968223161s",
		"executionTime": "10.967698098s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1000001
	}
}

103
Ver 3
USE bigfun;
SELECT VALUE user
FROM GleambookUsers user
WHERE user.user_since >= 
DATETIME(
 "2007-06-20T11:54:28" )
AND user.user_since <= 
DATETIME(
 "2007-07-28T11:54:28" )
;
 

{
	"requestID": "57a46592-9d0d-48ca-888b-a6ff49455d84",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/589-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "11.796831071s",
		"executionTime": "11.796167439s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1278420
	}
}

104
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (SOME e IN gbu.employment SATISFIES e.end_date IS UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2013-07-07T23:45:52" )
AND gbu.user_since <= 
DATETIME(
 "2013-08-14T23:45:52" )
;
 

{
	"requestID": "50cddd6f-1719-4988-a7c2-208dfd9b69f4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/590-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "7.66358259s",
		"executionTime": "7.662777151s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1279158
	}
}

105
Ver 3
USE bigfun;
SELECT VALUE gbu
FROM GleambookUsers gbu
WHERE (EVERY e IN gbu.employment SATISFIES e.end_date IS NOT UNKNOWN)
AND gbu.user_since >= 
DATETIME(
 "2006-10-21T13:01:31" )
AND gbu.user_since <= 
DATETIME(
 "2006-11-28T13:01:31" )
;
 

{
	"requestID": "92aaa369-77a3-4ba1-800d-2b77c636d84f",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/591-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.097560993s",
		"executionTime": "4.096800531s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1276642
	}
}

106
Ver 3
USE bigfun;
SELECT value AVG(LENGTH(cm.message_text))
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2012-01-22T17:17:24" )
AND cm.send_time <
DATETIME(
 "2012-02-06T17:17:24" );
 

{
	"requestID": "0ad6a249-4a93-4d85-96b1-d9cea491df8e",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/592-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.609353212s",
		"executionTime": "3.60892391s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1231838
	}
}

107
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2008-09-18T08:33:55" )
AND cm.send_time <
DATETIME(
 "2008-10-03T08:33:55" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
 

{
	"requestID": "a8afdd25-6f98-4f89-985c-1d25c163949a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/593-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "5.649508408s",
		"executionTime": "5.64856392s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1233068
	}
}

108
Ver 3
USE bigfun;
SELECT uname, a
FROM ChirpMessages cm
WHERE cm.send_time >=
DATETIME(
 "2003-02-17T15:36:50" )
AND cm.send_time <
DATETIME(
 "2003-03-04T15:36:50" )
GROUP BY cm.user.screen_name AS uname WITH a AS AVG(LENGTH(cm.message_text))
ORDER BY a DESC
LIMIT 10
;
 

{
	"requestID": "af53dedc-0bf7-47aa-a63c-f2f946f90dfb",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/594-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "4.649683671s",
		"executionTime": "4.648772612s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1232204
	}
}

109
Ver 3
USE bigfun;
from ChirpMessages cm 
let po =st_geom_from_text("POLYGON((
 44.9013  74.2822 ,
 54.9013  74.2822 ,
 54.9013  84.2822 ,
 44.9013  84.2822 ,
 44.9013  74.2822 ))"
)where 
ST_INTERSECTS(cm.sender_location, po)
SELECT cm.user.name,message_text 
;
 

{
	"requestID": "0c022c92-e192-43ba-aed1-e33413464c4a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/595-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.614652589s",
		"executionTime": "60.614193086s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 22545740
	}
}

1010
Ver 3
USE bigfun;
select cm from ChirpMessages cm
where contains(cm.message_text, 
 "Nexus" )order by cm.send_time desc
limit 10 
;
 

{
	"requestID": "28372cda-1a93-4df8-ac31-582755f08ff9",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/596-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "120.911128639s",
		"executionTime": "120.910433705s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 219980846
	}
}

1012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id = gbu.id and
gbu.user_since >= 
DATETIME(
 "2012-10-11T22:02:47" )
and
gbu.user_since <
DATETIME(
 "2012-11-18T22:02:47" )
and
gbm.send_time >=
DATETIME(
 "2002-05-14T21:16:05" )
and
gbm.send_time <
DATETIME(
 "2002-05-15T21:16:05" )
;
 

{
	"requestID": "32b24c8b-36a7-4697-90c2-46b6fddcdca0",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/597-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "6.797747196s",
		"executionTime": "6.796950739s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1444530
	}
}

1013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2010-03-10T06:47:07" )
and gbm.send_time < 
DATETIME(
 "2010-04-17T06:47:07" )
and gbm.author_id = gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2011-10-14T00:55:42" )
and gbu.user_since <
DATETIME(
 "2011-10-15T00:55:42" )
;
 

{
	"requestID": "2c7f6ebc-2d07-4824-8583-0f2c41d2a3ca",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/598-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "60.198776277s",
		"executionTime": "60.197920141s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 6418122
	}
}

1014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2004-07-12T07:21:04" )
AND user.user_since < 
DATETIME(
 "2004-08-19T07:21:04" )
AND msg.send_time >=
DATETIME(
 "2002-09-04T14:03:48" )
AND msg.send_time <
DATETIME(
 "2002-09-05T14:03:48" )
GROUP BY user.id;
;
 

{
	"requestID": "20bbd15a-936f-43a3-ab6b-ebb75b710d42",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/599-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "9.246402715s",
		"executionTime": "9.245553467s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1443712
	}
}

1015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id = user.id
AND user.user_since >= 
DATETIME(
 "2006-12-11T02:27:19" )
AND user.user_since < 
DATETIME(
 "2007-01-18T02:27:19" )
AND msg.send_time >=
DATETIME(
 "2013-11-16T22:27:12" )
AND msg.send_time <
DATETIME(
 "2013-11-17T22:27:12" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "aafdbffd-4d86-4cc6-8fcf-85fde5973ff6",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/600-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "3.065077816s",
		"executionTime": "3.064158799s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 1446102
	}
}

2012
Ver 3
USE bigfun;
select  gbm.message , gbu.name from GleambookMessages gbm,GleambookUsers gbu
where gbm.author_id /*+ indexnl */ = gbu.id and
gbu.user_since >= 
DATETIME(
 "2001-05-07T22:38:52" )
and
gbu.user_since <
DATETIME(
 "2001-06-14T22:38:52" )
and
gbm.send_time >=
DATETIME(
 "2008-10-05T20:02:46" )
and
gbm.send_time <
DATETIME(
 "2008-10-06T20:02:46" )
;
 

{
	"requestID": "1c77bb5c-6f1d-496b-9d11-7c62ef8e08f4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/601-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.024816291s",
		"executionTime": "1.023968055s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 252495
	}
}

2013
Ver 3
USE bigfun;
select gbu.name,
(select value gbm.message from GleambookMessages gbm 
where gbm.send_time >= 
DATETIME(
 "2000-08-04T16:25:31" )
and gbm.send_time < 
DATETIME(
 "2000-09-11T16:25:31" )
and gbm.author_id /*+ indexnl */= gbu.id) as messages from GleambookUsers gbu 
where gbu.user_since >= 
DATETIME(
 "2001-03-25T11:55:03" )
and gbu.user_since <
DATETIME(
 "2001-03-26T11:55:03" )
;
 

{
	"requestID": "fa93b17b-7111-4269-a699-523011731b5d",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/602-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "1.623947443s",
		"executionTime": "1.623074698s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 202560
	}
}

2014
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2001-04-02T06:01:06" )
AND user.user_since < 
DATETIME(
 "2001-05-10T06:01:06" )
AND msg.send_time >=
DATETIME(
 "2008-08-26T13:55:20" )
AND msg.send_time <
DATETIME(
 "2008-08-27T13:55:20" )
GROUP BY user.id;
;
 

{
	"requestID": "897efdde-8714-43d8-9964-5e51da622489",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/603-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "19.390823839s",
		"executionTime": "19.389907814s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7700318
	}
}

2015
Ver 3
USE bigfun;
SELECT user.id AS id, COUNT(*) AS count
FROM GleambookUsers user, GleambookMessages msg
WHERE msg.author_id /*+ indexnl */ = user.id
AND user.user_since >= 
DATETIME(
 "2003-12-09T09:06:56" )
AND user.user_since < 
DATETIME(
 "2004-01-16T09:06:56" )
AND msg.send_time >=
DATETIME(
 "2001-09-24T21:26:57" )
AND msg.send_time <
DATETIME(
 "2001-09-25T21:26:57" )
GROUP BY user.id
ORDER BY count DESC
LIMIT 10
;
 

{
	"requestID": "38250a35-0d9e-43fa-9bd6-66b1ed4798c2",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/604-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "15.999719472s",
		"executionTime": "15.998541375s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 7658870
	}
}

1017
Ver 3
USE bigfun;
select sentiment(cm.message_text)
from ChirpMessages cm where 
cm.send_time >=
DATETIME(
 "2006-10-01T18:34:07" )
AND cm.send_time <
DATETIME(
 "2006-11-08T18:34:07" )
;
 

{
	"requestID": "35c0dc0a-109f-4e4a-9b6b-aeeab9dbad3a",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/605-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "485.655172261s",
		"executionTime": "485.654273448s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3117996
	}
}

1018
Ver 3
USE bigfun;
select count(*) as cnt ,sentiment(cm.message_text) as sentiment from ChirpMessages cm 
where 
cm.send_time >=
DATETIME(
 "2011-04-13T23:35:40" )
AND cm.send_time <
DATETIME(
 "2011-05-21T23:35:40" )
group by sentiment(cm.message_text);
 

{
	"requestID": "b6701d1d-f917-4ad3-b589-08456a7e65f4",
	"signature": {
		"*": "*"
	},
	"handle": "http://10.20.4.197:19002/query/service/result/606-0",
	"plans":{},
	"status": "success",
	"metrics": {
		"elapsedTime": "447.155042621s",
		"executionTime": "447.154124846s",
		"resultCount": 0,
		"resultSize": 0,
		"processedObjects": 3124080
	}
}

