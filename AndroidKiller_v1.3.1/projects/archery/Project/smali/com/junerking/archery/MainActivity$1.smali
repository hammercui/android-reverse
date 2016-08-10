.class Lcom/junerking/archery/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;


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
    .line 90
    iput-object p1, p0, Lcom/junerking/archery/MainActivity$1;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerTimeRecived(J)V
    .locals 5
    .param p1, "servertime"    # J

    .prologue
    const-wide/32 v3, 0x15180

    .line 93
    iget-object v0, p0, Lcom/junerking/archery/MainActivity$1;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {}, Lcom/junerking/archery/DoodleHelper;->GetTimeZoneOffsetSecond()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    # setter for: Lcom/junerking/archery/MainActivity;->serverTime:J
    invoke-static {v0, v1, v2}, Lcom/junerking/archery/MainActivity;->access$002(Lcom/junerking/archery/MainActivity;J)J

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--servertime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/junerking/archery/MainActivity$1;->this$0:Lcom/junerking/archery/MainActivity;

    # getter for: Lcom/junerking/archery/MainActivity;->serverTime:J
    invoke-static {v1}, Lcom/junerking/archery/MainActivity;->access$000(Lcom/junerking/archery/MainActivity;)J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/junerking/archery/MainActivity$1;->this$0:Lcom/junerking/archery/MainActivity;

    # getter for: Lcom/junerking/archery/MainActivity;->serverTime:J
    invoke-static {v1}, Lcom/junerking/archery/MainActivity;->access$000(Lcom/junerking/archery/MainActivity;)J

    move-result-wide v1

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 97
    return-void
.end method
