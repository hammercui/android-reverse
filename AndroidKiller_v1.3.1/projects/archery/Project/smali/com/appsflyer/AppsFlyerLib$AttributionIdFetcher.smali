.class abstract Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AttributionIdFetcher"
.end annotation


# static fields
.field private static currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private appsFlyerDevKey:Ljava/lang/String;

.field protected ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1601
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1604
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1605
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    .line 1606
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1607
    return-void
.end method


# virtual methods
.method protected abstract attributionCallback(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract attributionCallbackFailure(Ljava/lang/String;I)V
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public run()V
    .locals 28

    .prologue
    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1613
    :cond_1
    sget-object v23, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1614
    const/4 v6, 0x0

    .line 1616
    .local v6, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1617
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_2

    .line 1718
    sget-object v23, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1719
    if-eqz v6, :cond_0

    .line 1720
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1621
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1622
    .local v14, "now":J
    # invokes: Lcom/appsflyer/AppsFlyerLib;->getConfiguredChannel(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    # invokes: Lcom/appsflyer/AppsFlyerLib;->getCachedChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/appsflyer/AppsFlyerLib;->access$1200(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1623
    .local v4, "channel":Ljava/lang/String;
    const-string v5, ""

    .line 1624
    .local v5, "channelPostfix":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1625
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1627
    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->getUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "?devkey="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "&device_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1633
    .local v22, "urlString":Ljava/lang/StringBuilder;
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1635
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Calling server for attribution url: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 1638
    :cond_4
    new-instance v23, Ljava/net/URL;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 1640
    const-string v23, "GET"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1641
    const/16 v23, 0x2710

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1642
    const-string v23, "Connection"

    const-string v24, "close"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 1645
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 1647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1649
    .local v18, "responseTime":J
    const-string v23, "appsflyerGetConversionDataTiming"

    sub-long v24, v18, v14

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    # invokes: Lcom/appsflyer/AppsFlyerLib;->saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V
    invoke-static {v7, v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->access$1300(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1652
    const/16 v16, 0x0

    .line 1653
    .local v16, "reader":Ljava/io/BufferedReader;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1654
    .local v20, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 1656
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1657
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v11, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v17, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1659
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .local v17, "reader":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 1660
    .local v13, "line":Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 1661
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1664
    :catchall_0
    move-exception v23

    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object/from16 v16, v17

    .end local v13    # "line":Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v16, :cond_5

    .line 1665
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 1667
    :cond_5
    if-eqz v10, :cond_6

    .line 1668
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    throw v23
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1712
    .end local v4    # "channel":Ljava/lang/String;
    .end local v5    # "channelPostfix":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v14    # "now":J
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "responseTime":J
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "urlString":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v21

    .line 1713
    .local v21, "t":Ljava/lang/Throwable;
    :try_start_6
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 1714
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->attributionCallbackFailure(Ljava/lang/String;I)V

    .line 1716
    :cond_7
    const-string v23, "AppsFlyer_3.0"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1718
    sget-object v23, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1719
    if-eqz v6, :cond_8

    .line 1720
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1723
    .end local v21    # "t":Ljava/lang/Throwable;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 1664
    .restart local v4    # "channel":Ljava/lang/String;
    .restart local v5    # "channelPostfix":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "now":J
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "responseTime":J
    .restart local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "urlString":Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v17, :cond_a

    .line 1665
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 1667
    :cond_a
    if-eqz v11, :cond_b

    .line 1668
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 1671
    :cond_b
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1673
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Attribution data: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V

    .line 1675
    :cond_c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_f

    if-eqz v7, :cond_f

    .line 1676
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;
    invoke-static/range {v23 .. v23}, Lcom/appsflyer/AppsFlyerLib;->access$1400(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 1677
    .local v9, "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v23, "iscache"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1680
    .local v12, "isCache":Ljava/lang/String;
    if-eqz v12, :cond_d

    const-string v23, "false"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1682
    const-string v23, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    # invokes: Lcom/appsflyer/AppsFlyerLib;->saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V
    invoke-static {v7, v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->access$1300(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1685
    :cond_d
    const-string v23, "attributionId"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    # invokes: Lcom/appsflyer/AppsFlyerLib;->saveDataToSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$1500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1687
    const-string v23, "AppsFlyer_3.0"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "iscache="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " caching conversion data"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_e
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v23

    if-eqz v23, :cond_f

    .line 1691
    sget-object v23, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    .line 1694
    :try_start_8
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;
    :try_end_8
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v8

    .line 1698
    .local v8, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->attributionCallback(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1718
    .end local v8    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v12    # "isCache":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "responseTime":J
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_f
    :goto_5
    sget-object v23, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1719
    if-eqz v6, :cond_8

    .line 1720
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 1695
    .restart local v9    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v12    # "isCache":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "responseTime":J
    .restart local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 1696
    .local v3, "ae":Lcom/appsflyer/AttributionIDNotReady;
    move-object v8, v9

    .restart local v8    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .line 1704
    .end local v3    # "ae":Lcom/appsflyer/AttributionIDNotReady;
    .end local v8    # "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "conversionDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v12    # "isCache":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "responseTime":J
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_10
    :try_start_a
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v23

    if-eqz v23, :cond_11

    .line 1705
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error connection to server: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->attributionCallbackFailure(Ljava/lang/String;I)V

    .line 1707
    :cond_11
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1709
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "AttributionIdFetcher response code: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  url: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/appsflyer/LogMessages;->logMessageMaskKey(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1718
    .end local v4    # "channel":Ljava/lang/String;
    .end local v5    # "channelPostfix":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v14    # "now":J
    .end local v22    # "urlString":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v23

    sget-object v24, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1719
    if-eqz v6, :cond_12

    .line 1720
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    throw v23

    .line 1664
    .restart local v4    # "channel":Ljava/lang/String;
    .restart local v5    # "channelPostfix":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v14    # "now":J
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "responseTime":J
    .restart local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v22    # "urlString":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v23

    goto/16 :goto_2

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v23

    move-object v10, v11

    .end local v11    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method
