.class public Lcom/nuage/pay/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuage/pay/Logger;->debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-boolean v0, Lcom/nuage/pay/Logger;->debugMode:Z

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "nuagePay"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-boolean v0, Lcom/nuage/pay/Logger;->debugMode:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "nuagePay"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-boolean v0, Lcom/nuage/pay/Logger;->debugMode:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "nuagePay"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static isDebugModeEnabled()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/nuage/pay/Logger;->debugMode:Z

    return v0
.end method

.method public static setDebugModeEnabled(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/nuage/pay/Logger;->debugMode:Z

    .line 15
    return-void
.end method
