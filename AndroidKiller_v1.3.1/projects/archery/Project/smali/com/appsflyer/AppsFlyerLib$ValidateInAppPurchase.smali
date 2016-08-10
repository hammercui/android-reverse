.class abstract Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;
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
    name = "ValidateInAppPurchase"
.end annotation


# instance fields
.field private additionalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private currency:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private googlePublicKey:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private purchaseData:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "aPublicKey"    # Ljava/lang/String;
    .param p4, "aSignature"    # Ljava/lang/String;
    .param p5, "aPurchaseData"    # Ljava/lang/String;
    .param p6, "aPrice"    # Ljava/lang/String;
    .param p7, "aCurrency"    # Ljava/lang/String;
    .param p9, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1840
    .local p8, "aAdditionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1841
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1842
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    .line 1843
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->googlePublicKey:Ljava/lang/String;

    .line 1844
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    .line 1845
    iput-object p6, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->price:Ljava/lang/String;

    .line 1846
    iput-object p7, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->currency:Ljava/lang/String;

    .line 1847
    iput-object p8, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    .line 1848
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->signature:Ljava/lang/String;

    .line 1849
    iput-object p9, p0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1850
    return-void
.end method


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method

.method public run()V
    .locals 33

    .prologue
    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    const/16 v19, 0x0

    .line 1859
    .local v19, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1860
    .local v21, "context":Landroid/content/Context;
    if-nez v21, :cond_2

    .line 1934
    if-eqz v19, :cond_0

    .line 1935
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1864
    :cond_2
    :try_start_1
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1865
    .local v25, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "app_id"

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    const-string v2, "dev_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->appsFlyerDevKey:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    const-string v2, "public-key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->googlePublicKey:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    const-string v2, "sig-data"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    const-string v2, "signature"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->signature:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1873
    .local v27, "requestJsonObject":Lorg/json/JSONObject;
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1875
    .local v26, "postData":Ljava/lang/String;
    new-instance v32, Ljava/net/URL;

    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v32, "url":Ljava/net/URL;
    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v19, v0

    .line 1878
    const-string v2, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    move/from16 v20, v0

    .line 1880
    .local v20, "contentLength":I
    const-string v2, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v2, "Connection"

    const-string v4, "close"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v2, "Content-Type"

    const-string v4, "application/json"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const/16 v2, 0x2710

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1884
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1885
    const/16 v22, 0x0

    .line 1889
    .local v22, "out":Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v23, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1890
    .end local v22    # "out":Ljava/io/OutputStreamWriter;
    .local v23, "out":Ljava/io/OutputStreamWriter;
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1894
    if-eqz v23, :cond_3

    .line 1895
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStreamWriter;->close()V

    .line 1899
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v30

    .line 1900
    .local v30, "statusCode":I
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1901
    .local v18, "br":Ljava/io/BufferedReader;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 1904
    .local v29, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, "output":Ljava/lang/String;
    if-eqz v24, :cond_8

    .line 1905
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1925
    .end local v18    # "br":Ljava/io/BufferedReader;
    .end local v20    # "contentLength":I
    .end local v21    # "context":Landroid/content/Context;
    .end local v23    # "out":Ljava/io/OutputStreamWriter;
    .end local v24    # "output":Ljava/lang/String;
    .end local v25    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "postData":Ljava/lang/String;
    .end local v27    # "requestJsonObject":Lorg/json/JSONObject;
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v30    # "statusCode":I
    .end local v32    # "url":Ljava/net/URL;
    :catch_0
    move-exception v31

    .line 1926
    .local v31, "t":Ljava/lang/Throwable;
    :try_start_5
    # getter for: Lcom/appsflyer/AppsFlyerLib;->validatorListener:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1900()Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1927
    const-string v2, "AppsFlyer_3.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Validate request + ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->currency:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1932
    :cond_4
    const-string v2, "AppsFlyer_3.0"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1934
    if-eqz v19, :cond_5

    .line 1935
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1938
    .end local v31    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 1894
    .restart local v20    # "contentLength":I
    .restart local v21    # "context":Landroid/content/Context;
    .restart local v22    # "out":Ljava/io/OutputStreamWriter;
    .restart local v25    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "postData":Ljava/lang/String;
    .restart local v27    # "requestJsonObject":Lorg/json/JSONObject;
    .restart local v32    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v22, :cond_6

    .line 1895
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStreamWriter;->close()V

    :cond_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1934
    .end local v20    # "contentLength":I
    .end local v21    # "context":Landroid/content/Context;
    .end local v22    # "out":Ljava/io/OutputStreamWriter;
    .end local v25    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "postData":Ljava/lang/String;
    .end local v27    # "requestJsonObject":Lorg/json/JSONObject;
    .end local v32    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    if-eqz v19, :cond_7

    .line 1935
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v2

    .line 1908
    .restart local v18    # "br":Ljava/io/BufferedReader;
    .restart local v20    # "contentLength":I
    .restart local v21    # "context":Landroid/content/Context;
    .restart local v23    # "out":Ljava/io/OutputStreamWriter;
    .restart local v24    # "output":Ljava/lang/String;
    .restart local v25    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "postData":Ljava/lang/String;
    .restart local v27    # "requestJsonObject":Lorg/json/JSONObject;
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v30    # "statusCode":I
    .restart local v32    # "url":Ljava/net/URL;
    :cond_8
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1909
    .local v10, "str":Ljava/lang/String;
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1911
    .local v28, "responseJsonObject":Lorg/json/JSONObject;
    const/16 v2, 0xc8

    move/from16 v0, v30

    if-ne v0, v2, :cond_a

    .line 1912
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static/range {v21 .. v21}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1913
    const-string v2, "AppsFlyer_3.0"

    const-string v4, "Validate response 200 ok"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_9
    const-string v2, "result"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1917
    .local v3, "validated":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->currency:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1934
    .end local v3    # "validated":Z
    :goto_4
    if-eqz v19, :cond_5

    .line 1935
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 1920
    :cond_a
    :try_start_8
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static/range {v21 .. v21}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1921
    const-string v2, "AppsFlyer_3.0"

    const-string v4, "Failed Validate request"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->purchaseData:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->currency:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->additionalParams:Ljava/util/HashMap;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/appsflyer/AppsFlyerLib$ValidateInAppPurchase;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 1894
    .end local v10    # "str":Ljava/lang/String;
    .end local v18    # "br":Ljava/io/BufferedReader;
    .end local v24    # "output":Ljava/lang/String;
    .end local v28    # "responseJsonObject":Lorg/json/JSONObject;
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v30    # "statusCode":I
    :catchall_2
    move-exception v2

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStreamWriter;
    .restart local v22    # "out":Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method protected abstract validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
