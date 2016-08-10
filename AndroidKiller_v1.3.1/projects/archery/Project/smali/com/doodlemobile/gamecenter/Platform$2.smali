.class Lcom/doodlemobile/gamecenter/Platform$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/Platform;->getTestServerTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 287
    const-string v4, "http://ec2-184-73-77-17.compute-1.amazonaws.com/featureview/gettime/"

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-static {v4, v5}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "response":Ljava/lang/String;
    const/4 v1, 0x0

    .line 289
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 291
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    if-eqz v4, :cond_1

    .line 293
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    const-string v5, "date"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;->onServerTimeRecived(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 300
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_0
.end method
