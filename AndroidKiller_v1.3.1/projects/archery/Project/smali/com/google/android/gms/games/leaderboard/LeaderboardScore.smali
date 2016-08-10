.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;"
    }
.end annotation


# static fields
.field public static final LEADERBOARD_RANK_UNKNOWN:I = -0x1


# virtual methods
.method public abstract getDisplayRank()Ljava/lang/String;
.end method

.method public abstract getDisplayRank(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getDisplayScore()Ljava/lang/String;
.end method

.method public abstract getDisplayScore(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getRank()J
.end method

.method public abstract getRawScore()J
.end method

.method public abstract getScoreHolder()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getScoreHolderDisplayName()Ljava/lang/String;
.end method

.method public abstract getScoreHolderDisplayName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getScoreHolderHiResImageUri()Landroid/net/Uri;
.end method

.method public abstract getScoreHolderHiResImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScoreHolderIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getScoreHolderIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScoreTag()Ljava/lang/String;
.end method

.method public abstract getTimestampMillis()J
.end method
