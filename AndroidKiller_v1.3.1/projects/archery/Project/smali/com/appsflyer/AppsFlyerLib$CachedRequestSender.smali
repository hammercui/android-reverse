.class Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;
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
    name = "CachedRequestSender"
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1732
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1733
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1736
    # getter for: Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/appsflyer/AppsFlyerLib;->lastCacheCheck:J
    invoke-static {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->access$1702(J)J

    .line 1740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1743
    const/4 v1, 0x1

    # setter for: Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Z)Z

    .line 1745
    :try_start_0
    const-string v1, "AppsFlyerKey"

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1746
    .local v3, "afDevKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1747
    :try_start_1
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/appsflyer/cache/CacheManager;->getCachedRequests(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/appsflyer/cache/RequestCacheData;

    .line 1748
    .local v15, "requestCacheData":Lcom/appsflyer/cache/RequestCacheData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1749
    const-string v1, "AppsFlyer_3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resending request: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1755
    .local v11, "currentTime":J
    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    .line 1756
    .local v10, "cachedTimeString":Ljava/lang/String;
    const/16 v1, 0xa

    invoke-static {v10, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 1758
    .local v8, "cachedTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&isCachedRequest=true&timeincache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v4, v11, v8

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$CachedRequestSender;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppsFlyer_3.0"

    const/4 v7, 0x0

    # invokes: Lcom/appsflyer/AppsFlyerLib;->sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib;->access$900(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1766
    .end local v8    # "cachedTime":J
    .end local v10    # "cachedTimeString":Ljava/lang/String;
    .end local v11    # "currentTime":J
    :catch_0
    move-exception v13

    .line 1767
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "AppsFlyer_3.0"

    const-string v2, "Failed to resend cached request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1770
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "requestCacheData":Lcom/appsflyer/cache/RequestCacheData;
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1771
    .end local v3    # "afDevKey":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 1772
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "AppsFlyer_3.0"

    const-string v2, "failed to check cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1774
    const/4 v1, 0x0

    # setter for: Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Z)Z

    .line 1776
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_2
    # getter for: Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1800()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1777
    const/4 v1, 0x0

    # setter for: Lcom/appsflyer/AppsFlyerLib;->cacheScheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$1802(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_0

    .line 1770
    .restart local v3    # "afDevKey":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1774
    const/4 v1, 0x0

    # setter for: Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Z)Z

    goto :goto_2

    .end local v3    # "afDevKey":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    # setter for: Lcom/appsflyer/AppsFlyerLib;->isDuringCheckCache:Z
    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Z)Z

    throw v1
.end method
