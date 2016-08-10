.class public abstract Lcom/turbomanage/httpclient/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"


# static fields
.field public static final MULTIPART:Ljava/lang/String; = "multipart/form-data"

.field public static final URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded;charset=UTF-8"


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected connectionTimeout:I

.field private isConnected:Z

.field protected readTimeout:I

.field protected final requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

.field private requestHeaders:Ljava/util/Map;
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

.field protected requestLogger:Lcom/turbomanage/httpclient/RequestLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/turbomanage/httpclient/AbstractHttpClient;->ensureCookieManager()V

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/turbomanage/httpclient/AbstractHttpClient$1;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/AbstractHttpClient$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "requestHandler"    # Lcom/turbomanage/httpclient/RequestHandler;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->baseUrl:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/turbomanage/httpclient/ConsoleRequestLogger;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/ConsoleRequestLogger;-><init>()V

    iput-object v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    .line 42
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->connectionTimeout:I

    .line 46
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->readTimeout:I

    .line 81
    iput-object p1, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->baseUrl:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    .line 83
    return-void
.end method

.method private appendRequestHeaders(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 285
    iget-object v3, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected static ensureCookieManager()V
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 439
    :cond_0
    return-void
.end method

.method public static getCookieManager()Ljava/net/CookieManager;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/AbstractHttpClient;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-object p0
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 410
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 161
    new-instance v0, Lcom/turbomanage/httpclient/HttpDelete;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpDelete;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    invoke-virtual {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;->execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected doHttpMethod(Ljava/lang/String;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;[B)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/turbomanage/httpclient/HttpMethod;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turbomanage/httpclient/HttpRequestException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "uc":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 208
    .local v1, "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->isConnected:Z

    .line 209
    invoke-virtual {p0, p1}, Lcom/turbomanage/httpclient/AbstractHttpClient;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 210
    invoke-virtual {p0, v3, p2, p3}, Lcom/turbomanage/httpclient/AbstractHttpClient;->prepareConnection(Ljava/net/HttpURLConnection;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/turbomanage/httpclient/AbstractHttpClient;->readErrorStream(Ljava/net/HttpURLConnection;)Lcom/turbomanage/httpclient/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 236
    if-eqz v1, :cond_f

    :try_start_2
    invoke-virtual {v1}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-lez v4, :cond_f

    .line 241
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4, v1}, Lcom/turbomanage/httpclient/RequestLogger;->logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V

    .line 245
    :cond_0
    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v2, v1

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .local v2, "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    :goto_1
    return-object v2

    .line 212
    .end local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4, v3, p4}, Lcom/turbomanage/httpclient/RequestLogger;->logRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 217
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 218
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->isConnected:Z

    .line 219
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p4, :cond_4

    .line 220
    invoke-virtual {p0, v3, p4}, Lcom/turbomanage/httpclient/AbstractHttpClient;->writeOutputStream(Ljava/net/HttpURLConnection;[B)I

    .line 222
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 223
    invoke-virtual {p0, v3}, Lcom/turbomanage/httpclient/AbstractHttpClient;->readInputStream(Ljava/net/HttpURLConnection;)Lcom/turbomanage/httpclient/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 241
    :goto_2
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4, v1}, Lcom/turbomanage/httpclient/RequestLogger;->logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V

    .line 245
    :cond_5
    if-eqz v3, :cond_6

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v2, v1

    .line 249
    .end local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    goto :goto_1

    .line 225
    .end local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    :cond_7
    :try_start_4
    new-instance v2, Lcom/turbomanage/httpclient/HttpResponse;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/turbomanage/httpclient/HttpResponse;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    move-object v1, v2

    .end local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    goto :goto_2

    .line 232
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 236
    if-eqz v1, :cond_e

    :try_start_6
    invoke-virtual {v1}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-lez v4, :cond_e

    .line 241
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 243
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4, v1}, Lcom/turbomanage/httpclient/RequestLogger;->logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V

    .line 245
    :cond_8
    if-eqz v3, :cond_9

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    :goto_3
    move-object v2, v1

    .line 237
    .end local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    goto :goto_1

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    .restart local v1    # "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v5}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 243
    iget-object v5, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v5, v1}, Lcom/turbomanage/httpclient/RequestLogger;->logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V

    .line 245
    :cond_a
    if-eqz v3, :cond_b

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 241
    :cond_b
    throw v4

    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 236
    if-eqz v1, :cond_d

    :try_start_7
    invoke-virtual {v1}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-lez v4, :cond_d

    .line 241
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 243
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4, v1}, Lcom/turbomanage/httpclient/RequestLogger;->logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V

    .line 245
    :cond_c
    if-eqz v3, :cond_9

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 239
    :cond_d
    :try_start_8
    new-instance v4, Lcom/turbomanage/httpclient/HttpRequestException;

    invoke-direct {v4, v0, v1}, Lcom/turbomanage/httpclient/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/turbomanage/httpclient/HttpResponse;)V

    throw v4

    :cond_e
    new-instance v4, Lcom/turbomanage/httpclient/HttpRequestException;

    invoke-direct {v4, v0, v1}, Lcom/turbomanage/httpclient/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/turbomanage/httpclient/HttpResponse;)V

    throw v4

    :cond_f
    new-instance v4, Lcom/turbomanage/httpclient/HttpRequestException;

    invoke-direct {v4, v0, v1}, Lcom/turbomanage/httpclient/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/turbomanage/httpclient/HttpResponse;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 7
    .param p1, "httpRequest"    # Lcom/turbomanage/httpclient/HttpRequest;

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "httpResponse":Lcom/turbomanage/httpclient/HttpResponse;
    :try_start_0
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getHttpMethod()Lcom/turbomanage/httpclient/HttpMethod;

    move-result-object v4

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getContent()[B

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/turbomanage/httpclient/AbstractHttpClient;->doHttpMethod(Ljava/lang/String;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;[B)Lcom/turbomanage/httpclient/HttpResponse;
    :try_end_0
    .catch Lcom/turbomanage/httpclient/HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 185
    :goto_0
    return-object v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "hre":Lcom/turbomanage/httpclient/HttpRequestException;
    iget-object v3, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v3, v1}, Lcom/turbomanage/httpclient/RequestHandler;->onError(Lcom/turbomanage/httpclient/HttpRequestException;)Z

    goto :goto_0

    .line 181
    .end local v1    # "hre":Lcom/turbomanage/httpclient/HttpRequestException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    new-instance v4, Lcom/turbomanage/httpclient/HttpRequestException;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/turbomanage/httpclient/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/turbomanage/httpclient/HttpResponse;)V

    invoke-interface {v3, v4}, Lcom/turbomanage/httpclient/RequestHandler;->onError(Lcom/turbomanage/httpclient/HttpRequestException;)Z

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 106
    new-instance v0, Lcom/turbomanage/httpclient/HttpGet;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpGet;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    invoke-virtual {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;->execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 94
    new-instance v0, Lcom/turbomanage/httpclient/HttpHead;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpHead;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    invoke-virtual {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;->execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isTimeoutException(Ljava/lang/Throwable;J)Z
    .locals 8
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "startTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    const-wide/16 v6, 0xa

    add-long v0, v4, v6

    .line 451
    .local v0, "elapsedTime":J
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v4}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    iget-object v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ELAPSED TIME = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->connectionTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->readTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/turbomanage/httpclient/RequestLogger;->log(Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-boolean v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->isConnected:Z

    if-eqz v4, :cond_3

    .line 456
    iget v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->readTimeout:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 458
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 456
    goto :goto_0

    .line 458
    :cond_3
    iget v4, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->connectionTimeout:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public newParams()Lcom/turbomanage/httpclient/ParameterMap;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    return-object v0
.end method

.method protected openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "requestUrl":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v2, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v2, v1}, Lcom/turbomanage/httpclient/RequestHandler;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    return-object v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid URL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public post(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 117
    new-instance v0, Lcom/turbomanage/httpclient/HttpPost;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpPost;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    invoke-virtual {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;->execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;[B)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 133
    new-instance v0, Lcom/turbomanage/httpclient/HttpPost;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/turbomanage/httpclient/HttpPost;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;->execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected prepareConnection(Ljava/net/HttpURLConnection;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;)V
    .locals 1
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "httpMethod"    # Lcom/turbomanage/httpclient/HttpMethod;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->connectionTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 274
    iget v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->readTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 275
    iget-object v0, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/turbomanage/httpclient/RequestHandler;->prepareConnection(Ljava/net/HttpURLConnection;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;[B)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 149
    new-instance v0, Lcom/turbomanage/httpclient/HttpPut;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/turbomanage/httpclient/HttpPut;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/turbomanage/httpclient/AbstractHttpClient;->execute(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected readErrorStream(Ljava/net/HttpURLConnection;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 4
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "err":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 359
    .local v1, "responseBody":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    iget-object v2, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v2, v0}, Lcom/turbomanage/httpclient/RequestHandler;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 363
    :cond_0
    new-instance v2, Lcom/turbomanage/httpclient/HttpResponse;

    invoke-direct {v2, p1, v1}, Lcom/turbomanage/httpclient/HttpResponse;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    if-eqz v0, :cond_1

    .line 367
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    :cond_1
    :goto_0
    return-object v2

    .line 365
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 367
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 365
    :cond_2
    :goto_1
    throw v2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected readInputStream(Ljava/net/HttpURLConnection;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 4
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 331
    .local v1, "responseBody":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    iget-object v2, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v2, v0}, Lcom/turbomanage/httpclient/RequestHandler;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 335
    :cond_0
    new-instance v2, Lcom/turbomanage/httpclient/HttpResponse;

    invoke-direct {v2, p1, v1}, Lcom/turbomanage/httpclient/HttpResponse;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    if-eqz v0, :cond_1

    .line 339
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :cond_1
    :goto_0
    return-object v2

    .line 337
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 339
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    :cond_2
    :goto_1
    throw v2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->connectionTimeout:I

    .line 471
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->readTimeout:I

    .line 482
    return-void
.end method

.method public setRequestLogger(Lcom/turbomanage/httpclient/RequestLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/turbomanage/httpclient/RequestLogger;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    .line 428
    return-void
.end method

.method protected writeOutputStream(Ljava/net/HttpURLConnection;[B)I
    .locals 3
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/turbomanage/httpclient/AbstractHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v1, v0, p2}, Lcom/turbomanage/httpclient/RequestHandler;->writeStream(Ljava/io/OutputStream;[B)V

    .line 307
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 310
    if-eqz v0, :cond_1

    .line 312
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :cond_1
    :goto_0
    return v1

    .line 310
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 312
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    :cond_2
    :goto_1
    throw v1

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method
