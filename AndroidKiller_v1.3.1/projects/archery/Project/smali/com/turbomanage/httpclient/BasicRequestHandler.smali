.class public abstract Lcom/turbomanage/httpclient/BasicRequestHandler;
.super Ljava/lang/Object;
.source "BasicRequestHandler.java"

# interfaces
.implements Lcom/turbomanage/httpclient/RequestHandler;


# instance fields
.field private final logger:Lcom/turbomanage/httpclient/RequestLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/turbomanage/httpclient/ConsoleRequestLogger;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/ConsoleRequestLogger;-><init>()V

    invoke-direct {p0, v0}, Lcom/turbomanage/httpclient/BasicRequestHandler;-><init>(Lcom/turbomanage/httpclient/RequestLogger;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/turbomanage/httpclient/RequestLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/turbomanage/httpclient/RequestLogger;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/turbomanage/httpclient/BasicRequestHandler;->logger:Lcom/turbomanage/httpclient/RequestLogger;

    .line 40
    return-void
.end method


# virtual methods
.method public onError(Lcom/turbomanage/httpclient/HttpRequestException;)Z
    .locals 4
    .param p1, "e"    # Lcom/turbomanage/httpclient/HttpRequestException;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequestException;->getHttpResponse()Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    .line 84
    .local v0, "res":Lcom/turbomanage/httpclient/HttpResponse;
    iget-object v2, p0, Lcom/turbomanage/httpclient/BasicRequestHandler;->logger:Lcom/turbomanage/httpclient/RequestLogger;

    invoke-interface {v2}, Lcom/turbomanage/httpclient/RequestLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/turbomanage/httpclient/BasicRequestHandler;->logger:Lcom/turbomanage/httpclient/RequestLogger;

    const-string v3, "BasicRequestHandler.onError got"

    invoke-interface {v2, v3}, Lcom/turbomanage/httpclient/RequestLogger;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequestException;->printStackTrace()V

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v1

    .line 90
    .local v1, "status":I
    if-lez v1, :cond_1

    .line 92
    const/4 v2, 0x1

    .line 96
    .end local v1    # "status":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 46
    .local v0, "uc":Ljava/net/HttpURLConnection;
    return-object v0
.end method

.method public prepareConnection(Ljava/net/HttpURLConnection;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;)V
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "httpMethod"    # Lcom/turbomanage/httpclient/HttpMethod;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p2}, Lcom/turbomanage/httpclient/HttpMethod;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lcom/turbomanage/httpclient/HttpMethod;->getDoOutput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    invoke-virtual {p2}, Lcom/turbomanage/httpclient/HttpMethod;->getDoInput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 56
    if-eqz p3, :cond_0

    .line 57
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/16 v3, 0x4000

    new-array v1, v3, [B

    .line 72
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "nRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public writeStream(Ljava/io/OutputStream;[B)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 66
    return-void
.end method
