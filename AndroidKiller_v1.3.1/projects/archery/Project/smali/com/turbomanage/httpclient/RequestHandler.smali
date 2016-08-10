.class public interface abstract Lcom/turbomanage/httpclient/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# static fields
.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# virtual methods
.method public abstract onError(Lcom/turbomanage/httpclient/HttpRequestException;)Z
.end method

.method public abstract openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareConnection(Ljava/net/HttpURLConnection;Lcom/turbomanage/httpclient/HttpMethod;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readStream(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStream(Ljava/io/OutputStream;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
