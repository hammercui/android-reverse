.class public Lcom/turbomanage/httpclient/android/DoHttpRequestTask;
.super Landroid/os/AsyncTask;
.source "DoHttpRequestTask.java"

# interfaces
.implements Lcom/turbomanage/httpclient/AsyncRequestExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/turbomanage/httpclient/HttpRequest;",
        "Ljava/lang/Void;",
        "Lcom/turbomanage/httpclient/HttpResponse;",
        ">;",
        "Lcom/turbomanage/httpclient/AsyncRequestExecutor;"
    }
.end annotation


# instance fields
.field private callback:Lcom/turbomanage/httpclient/AsyncCallback;

.field private client:Lcom/turbomanage/httpclient/AsyncHttpClient;

.field private savedException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/turbomanage/httpclient/AsyncHttpClient;Lcom/turbomanage/httpclient/AsyncCallback;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/turbomanage/httpclient/AsyncHttpClient;
    .param p2, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->client:Lcom/turbomanage/httpclient/AsyncHttpClient;

    .line 32
    iput-object p2, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->callback:Lcom/turbomanage/httpclient/AsyncCallback;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;
    .locals 4
    .param p1, "params"    # [Lcom/turbomanage/httpclient/HttpRequest;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_0

    .line 39
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 40
    .local v1, "httpRequest":Lcom/turbomanage/httpclient/HttpRequest;
    iget-object v2, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->client:Lcom/turbomanage/httpclient/AsyncHttpClient;

    invoke-virtual {v2, v1}, Lcom/turbomanage/httpclient/AsyncHttpClient;->tryMany(Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v2

    .line 51
    .end local v1    # "httpRequest":Lcom/turbomanage/httpclient/HttpRequest;
    :goto_0
    return-object v2

    .line 43
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DoHttpRequestTask takes exactly one argument of type HttpRequest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->savedException:Ljava/lang/Exception;

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->cancel(Z)Z

    .line 51
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, [Lcom/turbomanage/httpclient/HttpRequest;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->doInBackground([Lcom/turbomanage/httpclient/HttpRequest;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/turbomanage/httpclient/HttpRequest;)V
    .locals 2
    .param p1, "httpRequest"    # Lcom/turbomanage/httpclient/HttpRequest;

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/turbomanage/httpclient/HttpRequest;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->callback:Lcom/turbomanage/httpclient/AsyncCallback;

    iget-object v1, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->savedException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/turbomanage/httpclient/AsyncCallback;->onError(Ljava/lang/Exception;)V

    .line 62
    return-void
.end method

.method protected onPostExecute(Lcom/turbomanage/httpclient/HttpResponse;)V
    .locals 1
    .param p1, "result"    # Lcom/turbomanage/httpclient/HttpResponse;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->callback:Lcom/turbomanage/httpclient/AsyncCallback;

    invoke-virtual {v0, p1}, Lcom/turbomanage/httpclient/AsyncCallback;->onComplete(Lcom/turbomanage/httpclient/HttpResponse;)V

    .line 57
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/turbomanage/httpclient/HttpResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;->onPostExecute(Lcom/turbomanage/httpclient/HttpResponse;)V

    return-void
.end method
