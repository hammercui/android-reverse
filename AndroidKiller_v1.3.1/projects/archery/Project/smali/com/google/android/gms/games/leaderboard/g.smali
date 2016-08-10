.class public final Lcom/google/android/gms/games/leaderboard/g;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/f;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/g;->gd()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    move-result-object v0

    return-object v0
.end method

.method public ga()Ljava/lang/String;
    .locals 1

    const-string v0, "top_page_token_next"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gb()Ljava/lang/String;
    .locals 1

    const-string v0, "window_page_token_prev"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gc()Ljava/lang/String;
    .locals 1

    const-string v0, "window_page_token_next"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gd()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/leaderboard/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/f;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V

    return-object v0
.end method

.method public getCollection()I
    .locals 1

    const-string v0, "collection"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDisplayPlayerRank()Ljava/lang/String;
    .locals 1

    const-string v0, "player_display_rank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPlayerScore()Ljava/lang/String;
    .locals 1

    const-string v0, "player_display_score"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumScores()J
    .locals 2

    const-string v0, "total_scores"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "total_scores"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayerRank()J
    .locals 2

    const-string v0, "player_rank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "player_rank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayerScoreTag()Ljava/lang/String;
    .locals 1

    const-string v0, "player_score_tag"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawPlayerScore()J
    .locals 2

    const-string v0, "player_raw_score"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "player_raw_score"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTimeSpan()I
    .locals 1

    const-string v0, "timespan"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasPlayerInfo()Z
    .locals 1

    const-string v0, "player_raw_score"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/g;->ab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/f;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/f;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
