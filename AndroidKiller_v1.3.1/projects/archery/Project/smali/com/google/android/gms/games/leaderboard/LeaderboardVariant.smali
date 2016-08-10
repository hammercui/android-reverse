.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLLECTION_PUBLIC:I = 0x0

.field public static final COLLECTION_SOCIAL:I = 0x1

.field public static final NUM_SCORES_UNKNOWN:I = -0x1

.field public static final NUM_TIME_SPANS:I = 0x3

.field public static final PLAYER_RANK_UNKNOWN:I = -0x1

.field public static final PLAYER_SCORE_UNKNOWN:I = -0x1

.field public static final TIME_SPAN_ALL_TIME:I = 0x2

.field public static final TIME_SPAN_DAILY:I = 0x0

.field public static final TIME_SPAN_WEEKLY:I = 0x1


# virtual methods
.method public abstract ga()Ljava/lang/String;
.end method

.method public abstract gb()Ljava/lang/String;
.end method

.method public abstract gc()Ljava/lang/String;
.end method

.method public abstract getCollection()I
.end method

.method public abstract getDisplayPlayerRank()Ljava/lang/String;
.end method

.method public abstract getDisplayPlayerScore()Ljava/lang/String;
.end method

.method public abstract getNumScores()J
.end method

.method public abstract getPlayerRank()J
.end method

.method public abstract getPlayerScoreTag()Ljava/lang/String;
.end method

.method public abstract getRawPlayerScore()J
.end method

.method public abstract getTimeSpan()I
.end method

.method public abstract hasPlayerInfo()Z
.end method
