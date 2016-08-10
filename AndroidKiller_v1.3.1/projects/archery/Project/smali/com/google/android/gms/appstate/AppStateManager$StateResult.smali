.class public interface abstract Lcom/google/android/gms/appstate/AppStateManager$StateResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateResult"
.end annotation


# virtual methods
.method public abstract getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.end method

.method public abstract getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
.end method
