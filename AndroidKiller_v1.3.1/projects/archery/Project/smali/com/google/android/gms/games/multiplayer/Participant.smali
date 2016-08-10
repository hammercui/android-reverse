.class public interface abstract Lcom/google/android/gms/games/multiplayer/Participant;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Participant;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_DECLINED:I = 0x3

.field public static final STATUS_FINISHED:I = 0x5

.field public static final STATUS_INVITED:I = 0x1

.field public static final STATUS_JOINED:I = 0x2

.field public static final STATUS_LEFT:I = 0x4

.field public static final STATUS_NOT_INVITED_YET:I = 0x0

.field public static final STATUS_UNRESPONSIVE:I = 0x6


# virtual methods
.method public abstract ge()Ljava/lang/String;
.end method

.method public abstract getCapabilities()I
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getHiResImageUri()Landroid/net/Uri;
.end method

.method public abstract getHiResImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getParticipantId()Ljava/lang/String;
.end method

.method public abstract getPlayer()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.end method

.method public abstract getStatus()I
.end method

.method public abstract isConnectedToRoom()Z
.end method
