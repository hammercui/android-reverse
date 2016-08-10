.class public interface abstract Lcom/google/android/gms/games/achievement/Achievement;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_HIDDEN:I = 0x2

.field public static final STATE_REVEALED:I = 0x1

.field public static final STATE_UNLOCKED:I = 0x0

.field public static final TYPE_INCREMENTAL:I = 0x1

.field public static final TYPE_STANDARD:I


# virtual methods
.method public abstract getAchievementId()Ljava/lang/String;
.end method

.method public abstract getCurrentSteps()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescription(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getFormattedCurrentSteps()Ljava/lang/String;
.end method

.method public abstract getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getFormattedTotalSteps()Ljava/lang/String;
.end method

.method public abstract getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getLastUpdatedTimestamp()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getPlayer()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getRevealedImageUri()Landroid/net/Uri;
.end method

.method public abstract getState()I
.end method

.method public abstract getTotalSteps()I
.end method

.method public abstract getType()I
.end method

.method public abstract getUnlockedImageUri()Landroid/net/Uri;
.end method
