.class Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;
.super Landroid/os/Handler;
.source "DFeatureGamesFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->access$0(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    :cond_0
    return-void
.end method
