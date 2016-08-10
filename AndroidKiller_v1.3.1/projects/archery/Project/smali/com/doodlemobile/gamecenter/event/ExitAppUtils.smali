.class public Lcom/doodlemobile/gamecenter/event/ExitAppUtils;
.super Ljava/lang/Object;
.source "ExitAppUtils.java"


# static fields
.field private static instance:Lcom/doodlemobile/gamecenter/event/ExitAppUtils;


# instance fields
.field private mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->instance:Lcom/doodlemobile/gamecenter/event/ExitAppUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->mActivityList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/doodlemobile/gamecenter/event/ExitAppUtils;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->instance:Lcom/doodlemobile/gamecenter/event/ExitAppUtils;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public delActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 63
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 59
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
