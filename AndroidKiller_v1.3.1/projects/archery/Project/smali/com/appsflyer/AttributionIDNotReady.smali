.class public Lcom/appsflyer/AttributionIDNotReady;
.super Ljava/lang/Exception;
.source "AttributionIDNotReady.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Data was not received from server yet."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
