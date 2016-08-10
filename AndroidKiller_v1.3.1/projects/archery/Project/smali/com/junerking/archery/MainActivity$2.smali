.class Lcom/junerking/archery/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/junerking/archery/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/junerking/archery/MainActivity;


# direct methods
.method constructor <init>(Lcom/junerking/archery/MainActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/junerking/archery/MainActivity$2;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullSCreenClosed()V
    .locals 3

    .prologue
    .line 126
    const-string v0, "PanelExitGame"

    const-string v1, "Hide"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
