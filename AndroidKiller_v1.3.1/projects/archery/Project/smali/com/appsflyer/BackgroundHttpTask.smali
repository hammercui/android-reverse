.class public Lcom/appsflyer/BackgroundHttpTask;
.super Landroid/os/AsyncTask;
.source "BackgroundHttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT:I = 0x7530


# instance fields
.field public bodyParameters:Ljava/util/Map;
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

.field private content:Ljava/lang/String;

.field private error:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/BackgroundHttpTask;->error:Z

    .line 31
    iput-object p1, p0, Lcom/appsflyer/BackgroundHttpTask;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/appsflyer/BackgroundHttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .local v9, "url":Ljava/net/URL;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v11

    if-nez v11, :cond_0

    .line 44
    const-string v11, "AppsFlyer_3.0"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "call stats = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "parameters = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyParameters:Ljava/util/Map;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 48
    .local v1, "conn":Ljavax/net/ssl/HttpsURLConnection;
    const/16 v11, 0x7530

    invoke-virtual {v1, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 49
    const/16 v11, 0x7530

    invoke-virtual {v1, v11}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 50
    const-string v11, "POST"

    invoke-virtual {v1, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 52
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 53
    const-string v11, "Content-Type"

    const-string v12, "application/text"

    invoke-virtual {v1, v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 57
    .local v6, "os":Ljava/io/OutputStream;
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v11, v6, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    .local v10, "writer":Ljava/io/BufferedWriter;
    iget-object v11, p0, Lcom/appsflyer/BackgroundHttpTask;->bodyParameters:Ljava/util/Map;

    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 60
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 61
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 62
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 65
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    .line 67
    .local v8, "responseCode":I
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_1

    .line 69
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 70
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 81
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v5

    .line 82
    .local v5, "malEx":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v11

    if-nez v11, :cond_1

    .line 83
    const-string v11, "AppsFlyer_3.0"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MalformedURLException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v5    # "malEx":Ljava/net/MalformedURLException;
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/appsflyer/BackgroundHttpTask;->content:Ljava/lang/String;

    return-object v11

    .line 74
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v11

    if-nez v11, :cond_1

    .line 75
    const-string v11, "AppsFlyer_3.0"

    const-string v12, "Status 200 ok"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 86
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v7

    .line 87
    .local v7, "protEx":Ljava/net/ProtocolException;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v11

    if-nez v11, :cond_1

    .line 88
    const-string v11, "AppsFlyer_3.0"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ProtocolException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    .end local v7    # "protEx":Ljava/net/ProtocolException;
    :catch_2
    move-exception v3

    .line 92
    .local v3, "ioEx":Ljava/io/IOException;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v11

    if-nez v11, :cond_1

    .line 93
    const-string v11, "AppsFlyer_3.0"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    .end local v3    # "ioEx":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/AppsFlyerProperties;->isDisableLog()Z

    move-result v11

    if-nez v11, :cond_1

    .line 98
    const-string v11, "AppsFlyer_3.0"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/appsflyer/BackgroundHttpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/appsflyer/BackgroundHttpTask;->error:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "Connection error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "Connection call succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
