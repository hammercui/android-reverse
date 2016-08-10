.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;
.super Ljava/lang/Object;
.source "MoreGamesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->backActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;->this$1:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;->this$1:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->access$1(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    return-void
.end method
