.class public interface abstract Lcom/google/android/gms/plus/model/moments/Moment;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/moments/Moment;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
.end method

.method public abstract getStartDate()Ljava/lang/String;
.end method

.method public abstract getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasResult()Z
.end method

.method public abstract hasStartDate()Z
.end method

.method public abstract hasTarget()Z
.end method

.method public abstract hasType()Z
.end method
