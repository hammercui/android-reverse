.class public Lcom/junerking/archery/DoodleHelper;
.super Ljava/lang/Object;
.source "DoodleHelper.java"


# static fields
.field private static final BONUS_COUNT:Ljava/lang/String; = "BonusCount"

.field private static final BONUS_TIME:Ljava/lang/String; = "BonusTime"

.field private static final DAY:J = 0x15180L

.field private static final HOUR:I = 0x36ee80


# instance fields
.field private activity:Lcom/junerking/archery/MainActivity;

.field private adsFree:Z

.field private bonusCount:I

.field private bonusTime:J

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/junerking/archery/MainActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/junerking/archery/MainActivity;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "adsFree"

    invoke-virtual {p1, v0, v2}, Lcom/junerking/archery/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "adsFree"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/junerking/archery/DoodleHelper;->adsFree:Z

    .line 42
    iget-object v0, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "BonusCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    .line 43
    iget-object v0, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "BonusTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/junerking/archery/DoodleHelper;->bonusTime:J

    .line 44
    return-void
.end method

.method public static GetTimeZone()I
    .locals 6

    .prologue
    .line 15
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 16
    .local v1, "time_zonex":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v3, 0x36ee80

    div-int v0, v2, v3

    .line 17
    .local v0, "time_zone":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time_zone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Unix TimeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    return v0
.end method

.method public static GetTimeZoneOffsetMills()I
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 29
    .local v0, "time_zonex":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    return v1
.end method

.method public static GetTimeZoneOffsetSecond()I
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 24
    .local v0, "time_zonex":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method


# virtual methods
.method public GetBonusAlreadyGet()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    return v0
.end method

.method public GetBonusCount()I
    .locals 11

    .prologue
    const-wide/32 v9, 0x15180

    const/4 v4, -0x1

    .line 68
    iget-object v5, p0, Lcom/junerking/archery/DoodleHelper;->activity:Lcom/junerking/archery/MainActivity;

    if-nez v5, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v4

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/junerking/archery/DoodleHelper;->activity:Lcom/junerking/archery/MainActivity;

    invoke-virtual {v5}, Lcom/junerking/archery/MainActivity;->internalGetServerTime()J

    move-result-wide v2

    .line 70
    .local v2, "timeNow":J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 71
    div-long v5, v2, v9

    iget-wide v7, p0, Lcom/junerking/archery/DoodleHelper;->bonusTime:J

    div-long/2addr v7, v9

    sub-long v0, v5, v7

    .line 72
    .local v0, "daySpan":J
    iget v5, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 73
    const/4 v4, 0x0

    goto :goto_0

    .line 74
    :cond_2
    iget v5, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    iget v4, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x7

    goto :goto_0
.end method

.method public SetBonusGet()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x15180

    .line 80
    iget-object v4, p0, Lcom/junerking/archery/DoodleHelper;->activity:Lcom/junerking/archery/MainActivity;

    if-nez v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/junerking/archery/DoodleHelper;->activity:Lcom/junerking/archery/MainActivity;

    invoke-virtual {v4}, Lcom/junerking/archery/MainActivity;->internalGetServerTime()J

    move-result-wide v2

    .line 82
    .local v2, "timeNow":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 83
    div-long v4, v2, v8

    iget-wide v6, p0, Lcom/junerking/archery/DoodleHelper;->bonusTime:J

    div-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 84
    .local v0, "daySpan":J
    iget v4, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 85
    const/4 v4, 0x0

    iput v4, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    .line 86
    iput-wide v2, p0, Lcom/junerking/archery/DoodleHelper;->bonusTime:J

    .line 87
    iget-object v4, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "BonusCount"

    iget v6, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    iget-object v4, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "BonusTime"

    iget-wide v6, p0, Lcom/junerking/archery/DoodleHelper;->bonusTime:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 90
    :cond_2
    iget v4, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 91
    iget v4, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    .line 92
    iget-object v4, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "BonusCount"

    iget v6, p0, Lcom/junerking/archery/DoodleHelper;->bonusCount:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public isAdsFree()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/junerking/archery/DoodleHelper;->adsFree:Z

    return v0
.end method

.method public setAdsFree(Z)V
    .locals 2
    .param p1, "free"    # Z

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/junerking/archery/DoodleHelper;->adsFree:Z

    if-ne v0, p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-boolean p1, p0, Lcom/junerking/archery/DoodleHelper;->adsFree:Z

    .line 102
    iget-object v0, p0, Lcom/junerking/archery/DoodleHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "adsFree"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
