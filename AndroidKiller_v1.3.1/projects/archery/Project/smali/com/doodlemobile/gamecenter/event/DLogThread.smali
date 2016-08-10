.class public Lcom/doodlemobile/gamecenter/event/DLogThread;
.super Landroid/os/HandlerThread;
.source "DLogThread.java"


# static fields
.field private static final LOG_THREAD_NAME:Ljava/lang/String; = "dm_log_thread"

.field private static handler:Landroid/os/Handler;

.field private static instance:Lcom/doodlemobile/gamecenter/event/DLogThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    .line 25
    sput-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/doodlemobile/gamecenter/event/DLogThread;->getInstance()Lcom/doodlemobile/gamecenter/event/DLogThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/event/DLogThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->handler:Landroid/os/Handler;

    .line 30
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getInstance()Lcom/doodlemobile/gamecenter/event/DLogThread;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/doodlemobile/gamecenter/event/DLogThread;

    const-string v1, "dm_log_thread"

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/event/DLogThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    .line 19
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/event/DLogThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/event/DLogThread;->start()V

    .line 22
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/event/DLogThread;->instance:Lcom/doodlemobile/gamecenter/event/DLogThread;

    return-object v0
.end method

.method public static declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    const-class v1, Lcom/doodlemobile/gamecenter/event/DLogThread;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/event/DLogThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
