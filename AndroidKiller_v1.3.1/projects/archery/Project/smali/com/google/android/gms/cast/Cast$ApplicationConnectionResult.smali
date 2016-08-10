.class public interface abstract Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationConnectionResult"
.end annotation


# virtual methods
.method public abstract getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
.end method

.method public abstract getApplicationStatus()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getWasLaunched()Z
.end method
