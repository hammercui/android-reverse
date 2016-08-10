.class Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$1;
.super Landroid/os/Handler;
.source "DFeatureGamesFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 136
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 137
    .local v1, "size":I
    const-string v2, "main handler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calling reset and feature view size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 143
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 140
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->reset()V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
