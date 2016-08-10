.class public Lcom/doodlemobile/gamecenter/event/DHandlerThread;
.super Landroid/os/HandlerThread;
.source "DHandlerThread.java"


# static fields
.field private static final DMHandlerThread_NAME:Ljava/lang/String; = "dm_handlerthread"

.field private static gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/doodlemobile/gamecenter/event/DHandlerThread;
    .locals 3

    .prologue
    .line 16
    :try_start_0
    sget-object v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    const-string v2, "dm_handlerthread"

    invoke-direct {v1, v2}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    .line 20
    :cond_0
    sget-object v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    sget-object v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->start()V

    .line 24
    :cond_1
    sget-object v1, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->gInstance:Lcom/doodlemobile/gamecenter/event/DHandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 25
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v1, 0x0

    goto :goto_0
.end method
