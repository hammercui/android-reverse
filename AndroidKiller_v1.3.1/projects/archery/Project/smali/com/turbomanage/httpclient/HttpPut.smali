.class public Lcom/turbomanage/httpclient/HttpPut;
.super Lcom/turbomanage/httpclient/HttpRequest;
.source "HttpPut.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/turbomanage/httpclient/HttpRequest;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 19
    sget-object v0, Lcom/turbomanage/httpclient/HttpMethod;->PUT:Lcom/turbomanage/httpclient/HttpMethod;

    iput-object v0, p0, Lcom/turbomanage/httpclient/HttpPut;->httpMethod:Lcom/turbomanage/httpclient/HttpMethod;

    .line 20
    iput-object p1, p0, Lcom/turbomanage/httpclient/HttpPut;->path:Ljava/lang/String;

    .line 21
    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    iput-object v0, p0, Lcom/turbomanage/httpclient/HttpPut;->contentType:Ljava/lang/String;

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Lcom/turbomanage/httpclient/ParameterMap;->urlEncodedBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/turbomanage/httpclient/HttpPut;->content:[B

    .line 25
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/turbomanage/httpclient/HttpRequest;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V

    .line 37
    sget-object v0, Lcom/turbomanage/httpclient/HttpMethod;->PUT:Lcom/turbomanage/httpclient/HttpMethod;

    iput-object v0, p0, Lcom/turbomanage/httpclient/HttpPut;->httpMethod:Lcom/turbomanage/httpclient/HttpMethod;

    .line 38
    iput-object p3, p0, Lcom/turbomanage/httpclient/HttpPut;->contentType:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/turbomanage/httpclient/HttpPut;->content:[B

    .line 40
    return-void
.end method
