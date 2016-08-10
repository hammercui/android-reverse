.class Lcom/doodlemobile/gamecenter/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/Platform;->getServerTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 234
    const-string v4, "http://newfeatureview11.perfectionholic.com/featureview/gettime/"

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-static {v4, v5}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "response":Ljava/lang/String;
    const/4 v1, 0x0

    .line 236
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 238
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "ServerTimeThread"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "json: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    if-eqz v4, :cond_2

    .line 241
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    const-string v5, "date"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;->onServerTimeRecived(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 251
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    if-eqz v4, :cond_1

    .line 246
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    const-wide/16 v5, -0x1

    invoke-interface {v4, v5, v6}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;->onServerTimeRecived(J)V

    .line 248
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
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
    :cond_2
    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_0
.end method
