.class public Landroid/util/OpHttpClient;
.super Ljava/lang/Object;
.source "OpHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/OpHttpClient$DateTimeXmlParseHandler;
    }
.end annotation


# static fields
.field private static final AVERAGE_RECEIVE_TIME:J = 0x340L

.field private static final DEBUG:Z = true

.field private static final GMT_BEIJING_OFFSET:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "OpHttpClient"

.field private static final oemServerURL_RANDOM:Ljava/lang/String; = "http://newds01.myoppo.com/autotime/dateandtime.xml?number="

.field private static final oemServerURL_RANDOM2:Ljava/lang/String; = "http://newds02.myoppo.com/autotime/dateandtime.xml?number="


# instance fields
.field private mHttpTime:J

.field private mHttpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private forceRefreshTimeFromOemServer(Landroid/content/Context;II)Z
    .locals 41

    move-object/from16 v1, p0

    move/from16 v2, p3

    const-string v0, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "OpHttpClient"

    const-string v6, "Enter forceRefreshTimeFromOemServer run"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v6, "http://newds01.myoppo.com/autotime/dateandtime.xml?number="
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-lez p2, :cond_0

    :try_start_1
    const-string/jumbo v7, "http://newds02.myoppo.com/autotime/dateandtime.xml?number="
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v23, v3

    goto/16 :goto_6

    :cond_0
    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object v4, v7

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cur http request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OemServer proxyHost = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " proxyPort = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/util/OpHttpClient;->getNetType(Landroid/content/Context;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v10, :cond_1

    :try_start_4
    const-string v10, "Get network type success!"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v7, v10

    const-string v10, "HttpURLConnection open openConnection success!"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_1
    :try_start_5
    const-string v10, "Use http proxy!"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/net/Proxy;

    sget-object v11, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v12, Ljava/net/InetSocketAddress;

    invoke-direct {v12, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v10, v11, v12}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v4, v10}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    move-object v7, v11

    :goto_1
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeout:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-string v14, "Strart to connect http server!"

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    const-string v14, "Connect http server success!"

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Landroid/util/OpHttpClient;->mHttpTimeReference:J

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http responseCode:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v2, 0xc8

    if-ne v10, v2, :cond_3

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-wide/from16 v17, v23

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move/from16 v23, v3

    :try_start_7
    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v14, v2

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v2

    nop

    :goto_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_2

    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    const-string v2, "Read response data success!"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v0, v16

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    move/from16 v23, v3

    move-object/from16 v0, v16

    :goto_3
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v11, v8

    move/from16 v16, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/util/OpHttpClient;->mHttpTimeReference:J

    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v8, "Start to parser http response data!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v19
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v20, v19

    move-object/from16 v19, v4

    :try_start_9
    new-instance v4, Landroid/util/OpHttpClient$DateTimeXmlParseHandler;

    invoke-direct {v4, v1}, Landroid/util/OpHttpClient$DateTimeXmlParseHandler;-><init>(Landroid/util/OpHttpClient;)V

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    invoke-interface {v6, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v20, v7

    new-instance v7, Lorg/xml/sax/InputSource;

    move-object/from16 v25, v8

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v4}, Landroid/util/OpHttpClient$DateTimeXmlParseHandler;->getDate()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v0

    const/4 v0, 0x3

    move-object/from16 v27, v6

    new-array v6, v0, [I

    const/16 v22, 0x0

    move/from16 v28, v22

    move/from16 v0, v28

    :goto_4
    move-object/from16 v28, v7

    array-length v7, v8

    if-ge v0, v7, :cond_4

    aget-object v7, v8, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v28

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Landroid/util/OpHttpClient$DateTimeXmlParseHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v30, v0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v22, 0x0

    move/from16 v29, v22

    move-object/from16 v31, v4

    move/from16 v4, v29

    :goto_5
    move-object/from16 v29, v8

    array-length v8, v7

    if-ge v4, v8, :cond_5

    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v29

    goto :goto_5

    :cond_5
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v7

    const-string v7, "Parser time success, hour= "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v40, v9

    const/4 v7, 0x0

    aget v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " minute = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "seconds ="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget v9, v0, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v33, v0, v7

    const/4 v8, 0x1

    aget v34, v0, v8

    const/4 v9, 0x0

    aget v35, v0, v9

    aget v36, v6, v7

    aget v7, v6, v8

    add-int/lit8 v37, v7, -0x1

    aget v38, v6, v9

    move-object/from16 v32, v4

    invoke-virtual/range {v32 .. v38}, Landroid/text/format/Time;->set(IIIIII)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    const-wide/32 v21, 0x1b77400

    sub-long v7, v7, v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    move/from16 v32, v10

    int-to-long v9, v9

    add-long/2addr v9, v7

    sub-long v33, v21, v17

    add-long v9, v9, v33

    const-wide/16 v33, 0x340

    add-long v9, v9, v33

    move-object/from16 v33, v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v34

    sub-int v0, v0, v34

    move-object/from16 v35, v14

    move-object/from16 v34, v15

    int-to-long v14, v0

    add-long/2addr v14, v9

    iput-wide v14, v1, Landroid/util/OpHttpClient;->mHttpTime:J

    sub-long v14, v2, v12

    iput-wide v14, v1, Landroid/util/OpHttpClient;->mRoundTripTime:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v14, 0x1

    :try_start_a
    const-string/jumbo v15, "persist.sys.lasttime"

    move/from16 v36, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v23, v14

    move-object/from16 v4, v19

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_6

    :catch_5
    move-exception v0

    move/from16 v23, v3

    move-object/from16 v19, v4

    goto :goto_6

    :catch_6
    move-exception v0

    move/from16 v23, v3

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OemServer exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v19, v4

    :goto_7
    return v14
.end method

.method private getNetType(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    return v5

    :cond_2
    const-string v4, "MOBILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "GPRS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v6, "cmwap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v1

    :cond_5
    return v5
.end method


# virtual methods
.method public getHttpTime()J
    .locals 2

    iget-wide v0, p0, Landroid/util/OpHttpClient;->mHttpTime:J

    return-wide v0
.end method

.method public getHttpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/util/OpHttpClient;->mHttpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/util/OpHttpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Landroid/content/Context;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/util/OpHttpClient;->forceRefreshTimeFromOemServer(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method
