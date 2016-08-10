.class public Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;
.super Ljava/lang/Object;
.source "DoodleMobileAnaylise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEvent"
.end annotation


# instance fields
.field event:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Lorg/json/JSONObject;)V
    .locals 0
    .param p2, "e"    # Lorg/json/JSONObject;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->event:Lorg/json/JSONObject;

    .line 596
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 601
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->fileCreated:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->OpenAnalyticsFile()Z
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    const-string v3, "logEvent"

    const-string v4, "can not open file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$3(Z)V

    .line 606
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v3

    invoke-virtual {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->updateSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->currentFile:Ljava/io/File;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$4()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 609
    .local v1, "fos":Ljava/io/FileOutputStream;
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$5()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 610
    const-string v3, ","

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 612
    :cond_2
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->event:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 613
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 615
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$5()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$6(I)V

    .line 616
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$5()I

    move-result v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->MC_MAX_EVENTS_PER_FILE:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$7()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 617
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$3(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 619
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 620
    .local v2, "localException1":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 622
    .end local v2    # "localException1":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
