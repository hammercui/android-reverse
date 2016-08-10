.class public Lcom/doodlemobile/gamecenter/net/DHttpClient;
.super Ljava/lang/Object;
.source "DHttpClient.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CON_TIMEOUT:I = 0x1388

.field private static final FETCH_TIMEOUT:I = 0x3e8

.field private static final REQUEST_TIMEOUT:I

.field private static httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 141
    sget-object v1, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_1

    .line 142
    sget-object v1, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 143
    .local v0, "cm":Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 145
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 147
    :cond_1
    return-void
.end method

.method public static downloadImage(Ljava/lang/String;)[B
    .locals 8
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string v5, "downloadImage:start"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 116
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v5, "downloadImage:excute get request"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 118
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const-string v5, "downloadImage:wait response"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 120
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 121
    const-string v5, "Http Download Image"

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getImageFromNet(url) failed... url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 124
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    const-string v5, "downloadImage:get bytes"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 126
    .local v0, "bytes":[B
    const-string v5, "downloadImage:got bytes"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 129
    .end local v0    # "bytes":[B
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Http Download Image"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Connection failed:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7

    .prologue
    .line 45
    sget-object v3, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_0

    .line 46
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 48
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    const-wide/16 v3, 0x3e8

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 50
    const/16 v3, 0x1388

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 51
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 53
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 55
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 56
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 57
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 56
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 58
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    .line 59
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 58
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 61
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 63
    .local v0, "conManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 65
    :cond_0
    sget-object v3, Lcom/doodlemobile/gamecenter/net/DHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v3
.end method

.method public static post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "request":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_0

    .line 80
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 81
    const-string v6, "UTF-8"

    .line 80
    invoke-direct {v1, p1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 82
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 85
    .end local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 86
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 87
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 88
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 89
    .local v4, "resEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v6

    .line 91
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 92
    const-string v6, "Http Request"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Response error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 96
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "Http Request"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Connection failed:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static varargs post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_0

    .line 71
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 73
    :cond_0
    invoke-static {p0, v0}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
