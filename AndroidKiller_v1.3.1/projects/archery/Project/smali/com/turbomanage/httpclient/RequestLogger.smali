.class public interface abstract Lcom/turbomanage/httpclient/RequestLogger;
.super Ljava/lang/Object;
.source "RequestLogger.java"


# virtual methods
.method public abstract isLoggingEnabled()Z
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract logRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V
.end method
