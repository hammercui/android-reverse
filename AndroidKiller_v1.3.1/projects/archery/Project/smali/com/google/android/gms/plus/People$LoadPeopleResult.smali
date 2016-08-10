.class public interface abstract Lcom/google/android/gms/plus/People$LoadPeopleResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPeopleResult"
.end annotation


# virtual methods
.method public abstract getNextPageToken()Ljava/lang/String;
.end method

.method public abstract getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
.end method
