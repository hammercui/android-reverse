.class public interface abstract Lcom/google/android/gms/games/multiplayer/realtime/Room;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Lcom/google/android/gms/games/multiplayer/Participatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/Participatable;"
    }
.end annotation


# static fields
.field public static final ROOM_STATUS_ACTIVE:I = 0x3

.field public static final ROOM_STATUS_AUTO_MATCHING:I = 0x1

.field public static final ROOM_STATUS_CONNECTING:I = 0x2

.field public static final ROOM_STATUS_INVITING:I = 0x0

.field public static final ROOM_VARIANT_DEFAULT:I = -0x1


# virtual methods
.method public abstract getAutoMatchCriteria()Landroid/os/Bundle;
.end method

.method public abstract getAutoMatchWaitEstimateSeconds()I
.end method

.method public abstract getCreationTimestamp()J
.end method

.method public abstract getCreatorId()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescription(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getParticipant(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/Participant;
.end method

.method public abstract getParticipantId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParticipantIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParticipantStatus(Ljava/lang/String;)I
.end method

.method public abstract getRoomId()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getVariant()I
.end method
