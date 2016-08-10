.class public Lcom/doodlemobile/gamecenter/billing/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/doodlemobile/gamecenter/billing/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/billing/util/IabException;-><init>(Lcom/doodlemobile/gamecenter/billing/util/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 38
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/doodlemobile/gamecenter/billing/util/IabException;-><init>(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/billing/util/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/doodlemobile/gamecenter/billing/util/IabException;-><init>(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/util/IabException;->mResult:Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lcom/doodlemobile/gamecenter/billing/util/IabResult;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/util/IabException;->mResult:Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    return-object v0
.end method
