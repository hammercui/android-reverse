.class public Lcom/turbomanage/httpclient/AsyncHttpClient;
.super Lcom/turbomanage/httpclient/AbstractHttpClient;
.source "AsyncHttpClient.java"


# static fields
.field static fib:[I


# instance fields
.field protected final execFactory:Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;

.field private maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 16
    new-array v1, v5, [I

    sput-object v1, Lcom/turbomanage/httpclient/AsyncHttpClient;->fib:[I

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 20
    sget-object v2, Lcom/turbomanage/httpclient/AsyncHttpClient;->fib:[I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v1, v0

    :goto_1
    aput v1, v2, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lcom/turbomanage/httpclient/AsyncHttpClient;->fib:[I

    add-int/lit8 v3, v0, -0x2

    aget v1, v1, v3

    sget-object v3, Lcom/turbomanage/httpclient/AsyncHttpClient;->fib:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/2addr v1, v3

    goto :goto_1

    .line 22
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;

    .prologue
    .line 39
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/turbomanage/httpclient/AsyncHttpClient;-><init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "factory"    # Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/turbomanage/httpclient/AsyncHttpClient$1;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/AsyncHttpClient$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/turbomanage/httpclient/AsyncHttpClient;-><init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V
    .locals 1
    .param p1, "factory"    # Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/turbomanage/httpclient/RequestHandler;

    .prologue
    .line 61
    invoke-direct {p0, p2, p3}, Lcom/turbomanage/httpclient/AbstractHttpClient;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->maxRetries:I

    .line 62
    iput-object p1, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->execFactory:Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;

    .line 63
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Lcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;
    .param p3, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 149
    new-instance v0, Lcom/turbomanage/httpclient/HttpDelete;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpDelete;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 150
    .local v0, "req":Lcom/turbomanage/httpclient/HttpDelete;
    invoke-virtual {p0, v0, p3}, Lcom/turbomanage/httpclient/AsyncHttpClient;->executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V

    .line 151
    return-void
.end method

.method protected executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 2
    .param p1, "httpRequest"    # Lcom/turbomanage/httpclient/HttpRequest;
    .param p2, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->execFactory:Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;

    invoke-interface {v1, p0, p2}, Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;->getAsyncRequestExecutor(Lcom/turbomanage/httpclient/AsyncHttpClient;Lcom/turbomanage/httpclient/AsyncCallback;)Lcom/turbomanage/httpclient/AsyncRequestExecutor;

    move-result-object v0

    .line 162
    .local v0, "executor":Lcom/turbomanage/httpclient/AsyncRequestExecutor;
    invoke-interface {v0, p1}, Lcom/turbomanage/httpclient/AsyncRequestExecutor;->execute(Lcom/turbomanage/httpclient/HttpRequest;)V

    .line 163
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Lcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;
    .param p3, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 87
    new-instance v0, Lcom/turbomanage/httpclient/HttpGet;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpGet;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 88
    .local v0, "req":Lcom/turbomanage/httpclient/HttpRequest;
    invoke-virtual {p0, v0, p3}, Lcom/turbomanage/httpclient/AsyncHttpClient;->executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V

    .line 89
    return-void
.end method

.method protected getNextTimeout(I)I
    .locals 2
    .param p1, "numTries"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/turbomanage/httpclient/AsyncHttpClient;->fib:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public head(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Lcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;
    .param p3, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 74
    new-instance v0, Lcom/turbomanage/httpclient/HttpHead;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpHead;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 75
    .local v0, "req":Lcom/turbomanage/httpclient/HttpRequest;
    invoke-virtual {p0, v0, p3}, Lcom/turbomanage/httpclient/AsyncHttpClient;->executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V

    .line 76
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Lcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;
    .param p3, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 100
    new-instance v0, Lcom/turbomanage/httpclient/HttpPost;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/HttpPost;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 101
    .local v0, "req":Lcom/turbomanage/httpclient/HttpRequest;
    invoke-virtual {p0, v0, p3}, Lcom/turbomanage/httpclient/AsyncHttpClient;->executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V

    .line 102
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;[BLcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 118
    new-instance v0, Lcom/turbomanage/httpclient/HttpPost;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/turbomanage/httpclient/HttpPost;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Ljava/lang/String;[B)V

    .line 119
    .local v0, "req":Lcom/turbomanage/httpclient/HttpPost;
    invoke-virtual {p0, v0, p4}, Lcom/turbomanage/httpclient/AsyncHttpClient;->executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V

    .line 120
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;[BLcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 136
    new-instance v0, Lcom/turbomanage/httpclient/HttpPut;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/turbomanage/httpclient/HttpPut;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Ljava/lang/String;[B)V

    .line 137
    .local v0, "req":Lcom/turbomanage/httpclient/HttpRequest;
    invoke-virtual {p0, v0, p4}, Lcom/turbomanage/httpclient/AsyncHttpClient;->executeAsync(Lcom/turbomanage/httpclient/HttpRequest;Lcom/turbomanage/httpclient/AsyncCallback;)V

    .line 138
    return-void
.end method

.method public setMaxRetries(I)V
    .locals 2
    .param p1, "maxRetries"    # I

    .prologue
    .line 236
    if-lez p1, :cond_0

    const/16 v0, 0x12

    if-le p1, v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum retries must be between 1 and 18"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iput p1, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->maxRetries:I

    .line 240
    return-void
.end method

.method public tryMany(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 10
    .param p1, "httpRequest"    # Lcom/turbomanage/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turbomanage/httpclient/HttpRequestException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "numTries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 177
    .local v4, "startTime":J
    const/4 v3, 0x0

    .line 178
    .local v3, "res":Lcom/turbomanage/httpclient/HttpResponse;
    :goto_0
    iget v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->maxRetries:I

    if-ge v2, v6, :cond_4

    .line 180
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/turbomanage/httpclient/AsyncHttpClient;->getNextTimeout(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/turbomanage/httpclient/AsyncHttpClient;->setConnectionTimeout(I)V

    .line 181
    iget-object v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v6}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    iget-object v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->requestLogger:Lcom/turbomanage/httpclient/RequestLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "of"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->maxRetries:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", trying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/turbomanage/httpclient/RequestLogger;->log(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 185
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getHttpMethod()Lcom/turbomanage/httpclient/HttpMethod;

    move-result-object v7

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequest;->getContent()[B

    move-result-object v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/turbomanage/httpclient/AsyncHttpClient;->doHttpMethod(Ljava/lang/String;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;[B)Lcom/turbomanage/httpclient/HttpResponse;
    :try_end_0
    .catch Lcom/turbomanage/httpclient/HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 188
    if-eqz v3, :cond_2

    move-object v6, v3

    .line 213
    :goto_1
    return-object v6

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lcom/turbomanage/httpclient/HttpRequestException;
    invoke-virtual {p0, v0, v4, v5}, Lcom/turbomanage/httpclient/AsyncHttpClient;->isTimeoutException(Ljava/lang/Throwable;J)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->maxRetries:I

    add-int/lit8 v6, v6, -0x1

    if-lt v2, v6, :cond_2

    .line 196
    :cond_1
    iget-object v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->requestHandler:Lcom/turbomanage/httpclient/RequestHandler;

    invoke-interface {v6, v0}, Lcom/turbomanage/httpclient/RequestHandler;->onError(Lcom/turbomanage/httpclient/HttpRequestException;)Z

    move-result v1

    .line 197
    .local v1, "isRecoverable":Z
    if-eqz v1, :cond_3

    iget v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->maxRetries:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_3

    .line 200
    :try_start_1
    iget v6, p0, Lcom/turbomanage/httpclient/AsyncHttpClient;->connectionTimeout:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .end local v0    # "e":Lcom/turbomanage/httpclient/HttpRequestException;
    .end local v1    # "isRecoverable":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .restart local v0    # "e":Lcom/turbomanage/httpclient/HttpRequestException;
    .restart local v1    # "isRecoverable":Z
    :catch_1
    move-exception v6

    throw v0

    .line 207
    :cond_3
    throw v0

    .line 213
    .end local v0    # "e":Lcom/turbomanage/httpclient/HttpRequestException;
    .end local v1    # "isRecoverable":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
