.class public Lcom/turbomanage/httpclient/android/AsyncTaskFactory;
.super Ljava/lang/Object;
.source "AsyncTaskFactory.java"

# interfaces
.implements Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsyncRequestExecutor(Lcom/turbomanage/httpclient/AsyncHttpClient;Lcom/turbomanage/httpclient/AsyncCallback;)Lcom/turbomanage/httpclient/AsyncRequestExecutor;
    .locals 1
    .param p1, "client"    # Lcom/turbomanage/httpclient/AsyncHttpClient;
    .param p2, "callback"    # Lcom/turbomanage/httpclient/AsyncCallback;

    .prologue
    .line 24
    new-instance v0, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;

    invoke-direct {v0, p1, p2}, Lcom/turbomanage/httpclient/android/DoHttpRequestTask;-><init>(Lcom/turbomanage/httpclient/AsyncHttpClient;Lcom/turbomanage/httpclient/AsyncCallback;)V

    return-object v0
.end method
