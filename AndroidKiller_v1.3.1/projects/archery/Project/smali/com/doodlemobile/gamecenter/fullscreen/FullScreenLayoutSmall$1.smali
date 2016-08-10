.class Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;
.super Ljava/lang/Object;
.source "FullScreenLayoutSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 176
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v1, v6}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->setVisibility(I)V

    .line 177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    # getter for: Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->metrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->access$0(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    # getter for: Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->metrics:Landroid/util/DisplayMetrics;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->access$0(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 178
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    # getter for: Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->access$1(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    # getter for: Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->access$2(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    const-string v3, "Appear"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FullScreen_Small_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall$1;->this$0:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    # getter for: Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    invoke-static {v5}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->access$2(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    move-result-object v5

    iget-object v5, v5, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v6}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    return-void
.end method
