.class Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendToServerRunnable"
.end annotation


# instance fields
.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field isLaunch:Z

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "isLaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1495
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1496
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    .line 1497
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    .line 1498
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1499
    iput-boolean p4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->isLaunch:Z

    .line 1500
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Landroid/content/Context;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 1484
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1503
    const/4 v2, 0x0

    .line 1504
    .local v2, "postDataString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->getEventTag(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$500(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 1506
    .local v6, "eventLogTag":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 1507
    .local v8, "context":Landroid/content/Context;
    const/4 v12, 0x0

    .line 1508
    .local v12, "sentSuccessfully":Z
    if-eqz v8, :cond_1

    .line 1509
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1510
    .local v11, "referrer":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v1, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :cond_0
    const-string v1, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1515
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "true"

    const-string v4, "sentSuccessfully"

    const-string v5, ""

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v4, "eventName"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1517
    .local v9, "eventName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v5, "counter"

    const-string v7, "appsFlyerCount"

    if-nez v9, :cond_4

    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Ljava/lang/String;Z)I
    invoke-static {v8, v7, v1}, Lcom/appsflyer/AppsFlyerLib;->access$600(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v5, "iaecounter"

    const-string v7, "appsFlyerInAppEventCount"

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    :goto_1
    # invokes: Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Ljava/lang/String;Z)I
    invoke-static {v8, v7, v1}, Lcom/appsflyer/AppsFlyerLib;->access$600(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v4, "timepassedsincelastlaunch"

    const/4 v5, 0x1

    # invokes: Lcom/appsflyer/AppsFlyerLib;->getTimePassedSinceLastLaunch(Landroid/content/Context;Z)J
    invoke-static {v8, v5}, Lcom/appsflyer/AppsFlyerLib;->access$700(Landroid/content/Context;Z)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    .end local v9    # "eventName":Ljava/lang/String;
    .end local v11    # "referrer":Ljava/lang/String;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v5, "isFirstCall"

    if-nez v12, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v4, "appsflyerKey"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1524
    .local v3, "afDevKey":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 1525
    :cond_2
    const-string v1, "Not sending data yet, waiting for dev key"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v3    # "afDevKey":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    .end local v12    # "sentSuccessfully":Z
    :cond_3
    :goto_3
    return-void

    .line 1517
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "eventName":Ljava/lang/String;
    .restart local v11    # "referrer":Ljava/lang/String;
    .restart local v12    # "sentSuccessfully":Z
    .restart local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1518
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1521
    .end local v9    # "eventName":Ljava/lang/String;
    .end local v11    # "referrer":Ljava/lang/String;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1529
    .restart local v3    # "afDevKey":Ljava/lang/String;
    :cond_7
    new-instance v1, Lcom/appsflyer/HashUtils;

    invoke-direct {v1}, Lcom/appsflyer/HashUtils;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    invoke-virtual {v1, v4}, Lcom/appsflyer/HashUtils;->getHashCode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 1530
    .local v10, "hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v4, "af_v"

    invoke-interface {v1, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->isLaunch:Z

    if-eqz v7, :cond_8

    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    # invokes: Lcom/appsflyer/AppsFlyerLib;->sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib;->access$900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 1536
    .end local v3    # "afDevKey":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    .end local v10    # "hash":Ljava/lang/String;
    .end local v12    # "sentSuccessfully":Z
    :catch_0
    move-exception v14

    .line 1537
    .local v14, "t":Ljava/io/IOException;
    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v4, "&isCachedRequest=true&timeincache="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1538
    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v4

    new-instance v5, Lcom/appsflyer/cache/RequestCacheData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v7, "3.0"

    invoke-direct {v5, v1, v2, v7}, Lcom/appsflyer/cache/RequestCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/appsflyer/cache/CacheManager;->cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V

    goto :goto_3

    .line 1534
    .end local v14    # "t":Ljava/io/IOException;
    .restart local v3    # "afDevKey":Ljava/lang/String;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v10    # "hash":Ljava/lang/String;
    .restart local v12    # "sentSuccessfully":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 1541
    .end local v3    # "afDevKey":Ljava/lang/String;
    .end local v8    # "context":Landroid/content/Context;
    .end local v10    # "hash":Ljava/lang/String;
    .end local v12    # "sentSuccessfully":Z
    :catch_1
    move-exception v14

    .line 1542
    .local v14, "t":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method
