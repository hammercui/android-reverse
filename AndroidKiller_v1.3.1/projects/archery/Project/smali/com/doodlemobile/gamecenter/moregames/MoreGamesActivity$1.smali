.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->initMoreGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    .line 69
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setProgress(I)V

    .line 74
    const/16 v0, 0x50

    if-lt p2, v0, :cond_0

    .line 75
    sget v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    const-string v1, " More Apps"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    const-string v1, " More Games"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
