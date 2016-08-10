.class Lcom/doodlemobile/gamecenter/DGameTestActivity$3;
.super Ljava/lang/Object;
.source "DGameTestActivity.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;


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
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DGameTestActivity$3;->this$0:Lcom/doodlemobile/gamecenter/DGameTestActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerTimeRecived(J)V
    .locals 3
    .param p1, "servertime"    # J

    .prologue
    .line 54
    const-string v0, "ServerTime"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ServerTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 56
    :cond_0
    const-string v0, "ServerTime"

    const-string v1, "Get ServerTime failed, you should ues local time instead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    sput-wide p1, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->mServerTime:J

    goto :goto_0
.end method
