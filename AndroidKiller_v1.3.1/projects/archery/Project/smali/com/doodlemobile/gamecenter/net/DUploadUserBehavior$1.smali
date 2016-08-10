.class Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;
.super Ljava/lang/Object;
.source "DUploadUserBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->UploadToServer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$resource:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;->val$action:Ljava/lang/String;

    iput p2, p0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;->val$resource:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 68
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    const/16 v4, 0x4e20

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 72
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://192.168.1.241:8080/featureserver/receiveuesraction"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;->val$action:Ljava/lang/String;

    iget v6, p0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;->val$resource:I

    # invokes: Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->AssembleRequest(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v5, v6}, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->access$0(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 75
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
