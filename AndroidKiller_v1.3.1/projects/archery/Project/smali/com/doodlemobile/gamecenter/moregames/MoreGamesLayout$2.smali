.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$2;
.super Ljava/lang/Object;
.source "MoreGamesLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->initMoreGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$2;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$2;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->access$2(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$2;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->access$2(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
