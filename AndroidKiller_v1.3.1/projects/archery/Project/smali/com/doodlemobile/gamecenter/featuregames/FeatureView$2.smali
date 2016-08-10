.class Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;
.super Ljava/lang/Object;
.source "FeatureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getView(Ljava/lang/String;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 166
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$7(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$8(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v2, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$8(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mGameName:Ljava/lang/String;

    const-string v4, "Clicks"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    iget-object v6, v6, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLocation:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    invoke-static {v6}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$8(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    move-result-object v6

    iget-object v6, v6, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$9(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$7(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$9(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Market Not Work"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 173
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 174
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
