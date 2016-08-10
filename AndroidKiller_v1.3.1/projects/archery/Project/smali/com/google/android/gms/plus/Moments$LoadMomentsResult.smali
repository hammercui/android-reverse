.class public interface abstract Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Moments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadMomentsResult"
.end annotation


# virtual methods
.method public abstract getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;
.end method

.method public abstract getNextPageToken()Ljava/lang/String;
.end method

.method public abstract getUpdated()Ljava/lang/String;
.end method
