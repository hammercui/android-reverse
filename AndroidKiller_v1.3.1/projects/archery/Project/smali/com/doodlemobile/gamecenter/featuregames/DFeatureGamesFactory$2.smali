.class Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;
.super Ljava/lang/Object;
.source "DFeatureGamesFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->getGameList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;->val$context:Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    const-string v1, "http://newfeatureview11.perfectionholic.com/featureview/getfeatureview/"

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "response":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 182
    const-string v1, "NewFeatureview"

    const-string v2, "error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v1, "here"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->parse(Ljava/lang/String;Landroid/content/Context;)Z
    invoke-static {v1, v0, v2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->access$1(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    # getter for: Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->dmHandler:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->access$2()Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
