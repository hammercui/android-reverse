.class public Lcom/turbomanage/httpclient/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private body:[B

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private status:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "body"    # [B

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/turbomanage/httpclient/HttpResponse;->status:I

    .line 23
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/turbomanage/httpclient/HttpResponse;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/turbomanage/httpclient/HttpResponse;->headers:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lcom/turbomanage/httpclient/HttpResponse;->body:[B

    .line 29
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpResponse;->body:[B

    return-object v0
.end method

.method public getBodyAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpResponse;->body:[B

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/turbomanage/httpclient/HttpResponse;->body:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/turbomanage/httpclient/HttpResponse;->status:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpResponse;->url:Ljava/lang/String;

    return-object v0
.end method
