.class Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;
.super Landroid/os/Handler;
.source "FeatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/featuregames/FeatureView;
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
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    .line 247
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;)Lcom/doodlemobile/gamecenter/featuregames/FeatureView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 251
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 252
    .local v7, "curTime":J
    const/4 v10, 0x0

    .line 253
    .local v10, "forceRefresh":Z
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "Featureview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forceRefresh? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v10, 0x1

    .line 259
    :cond_0
    if-nez v10, :cond_1

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->lastRefreshedTime:J
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$0(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)J

    move-result-wide v1

    sub-long v1, v7, v1

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureRefreshtime:I
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$1(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-static {v1, v7, v8}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$2(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;J)V

    .line 262
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$3(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "rotation1":Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$4(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$4(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$4(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "admob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    :cond_2
    if-nez v0, :cond_3

    .line 267
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;

    .end local v0    # "rotation1":Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v3}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v5}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;-><init>(FFFFFZ)V

    .line 269
    .restart local v0    # "rotation1":Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
    :cond_3
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->setDuration(J)V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->setFillAfter(Z)V

    .line 271
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    new-instance v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1$1;-><init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;)V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 296
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    .end local v0    # "rotation1":Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # invokes: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->sendRefreshMSG()V
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$6(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    .line 307
    .end local v7    # "curTime":J
    .end local v10    # "forceRefresh":Z
    :goto_1
    return-void

    .line 298
    .restart local v0    # "rotation1":Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
    .restart local v7    # "curTime":J
    .restart local v10    # "forceRefresh":Z
    :cond_5
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    # invokes: Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshNewGame()V
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->access$5(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v0    # "rotation1":Lcom/doodlemobile/gamecenter/featuregames/DRotate3dAnimation;
    .end local v7    # "curTime":J
    .end local v10    # "forceRefresh":Z
    :catch_0
    move-exception v9

    .line 305
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
