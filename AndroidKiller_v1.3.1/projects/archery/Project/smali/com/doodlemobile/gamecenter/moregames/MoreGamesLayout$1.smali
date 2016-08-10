.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$1;
.super Landroid/webkit/WebChromeClient;
.source "MoreGamesLayout.java"


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
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    .line 91
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->access$1(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 95
    const/16 v0, 0x32

    if-lt p2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$1;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->access$1(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 98
    :cond_0
    return-void
.end method
