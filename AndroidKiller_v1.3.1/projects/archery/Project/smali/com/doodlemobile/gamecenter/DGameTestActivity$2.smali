.class Lcom/doodlemobile/gamecenter/DGameTestActivity$2;
.super Ljava/lang/Object;
.source "DGameTestActivity.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DGameTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DGameTestActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DGameTestActivity$2;->this$0:Lcom/doodlemobile/gamecenter/DGameTestActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenTaskBegined()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "FullScreen"

    const-string v1, "task begin now"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
