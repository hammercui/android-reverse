.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;
.super Landroid/os/Handler;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x186a1

    .line 721
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v4, v1, :cond_0

    .line 722
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V

    .line 723
    .local v0, "b":Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/event/DLogThread;->post(Ljava/lang/Runnable;)V

    .line 724
    sget-object v1, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mSyncHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x3a980

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 726
    .end local v0    # "b":Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;
    :cond_0
    return-void
.end method
