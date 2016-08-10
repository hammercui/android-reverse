.class public abstract Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;
.super Ljava/lang/Object;
.source "GetFSGameStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy$Key;
    }
.end annotation


# static fields
.field protected static final GET_FULLSCREEN_HOST:Ljava/lang/String; = "http://f211.doodlemobile.com/feature_server/fullScreen/get.php"


# instance fields
.field protected mainActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->mainActivity:Landroid/app/Activity;

    .line 31
    return-void
.end method


# virtual methods
.method public deleteCache()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->mainActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v0

    .line 126
    .local v0, "preferences":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->delete(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public abstract getFSGame()Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
.end method

.method protected getGameJsonStringFromNet()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 57
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->mainActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v0

    .line 58
    .local v0, "cache":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const/4 v2, 0x0

    .line 59
    .local v2, "hasClicked":Z
    const-string v5, "hasclicked"

    invoke-virtual {v0, v5}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    const-string v5, "hasclicked"

    invoke-virtual {v0, v5}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 62
    :cond_0
    const-string v7, "http://f211.doodlemobile.com/feature_server/fullScreen/get.php"

    const/4 v5, 0x6

    new-array v8, v5, [Lorg/apache/http/NameValuePair;

    const/4 v9, 0x0

    .line 63
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "clicked"

    if-eqz v2, :cond_1

    const-string v5, "1"

    :goto_0
    invoke-direct {v10, v11, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    const/4 v5, 0x1

    .line 64
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "deviceId"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceId_static()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v5

    const/4 v5, 0x2

    .line 65
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "language"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getLanguage_static()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v5

    const/4 v5, 0x3

    .line 66
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "locale"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getLocale_static()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v5

    const/4 v5, 0x4

    .line 67
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sysversion"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getAndroidVersion()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v5

    const/4 v5, 0x5

    .line 68
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "installedGames"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getAllInstalledDMPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v5

    .line 62
    invoke-static {v7, v8}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "str":Ljava/lang/String;
    const-string v5, "FullScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "game json str: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-nez v4, :cond_2

    move-object v5, v6

    .line 90
    :goto_1
    return-object v5

    .line 63
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    const-string v5, "0"

    goto :goto_0

    .line 74
    .restart local v4    # "str":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "retcode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 76
    const-string v5, "FullScreen"

    const-string v7, "message"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 77
    goto :goto_1

    .line 82
    :cond_3
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "you have installed all fs games."

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    const-string v5, "you have installed all fs games."

    goto :goto_1

    .line 85
    :cond_4
    :try_start_1
    const-string v5, "game"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 86
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v6

    .line 90
    goto :goto_1
.end method

.method protected getGameJsonStringFromPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "gameJsonStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->mainActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v1

    .line 96
    .local v1, "preferences":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v2, "fullscreen"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "fullscreen"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v2, "getFullScreenGame"

    const-string v3, "from SharedPreferences"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-object v0
.end method

.method protected parseJsonStringToFSGame(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .locals 6
    .param p1, "gameJsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    if-eqz p1, :cond_1

    .line 38
    const-string v5, "getFullScreenGame"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, "jsonGame":Lorg/json/JSONObject;
    new-instance v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    invoke-direct {v2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .local v2, "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    :try_start_1
    const-string v5, "package"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    .line 43
    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    .line 44
    const-string v5, "index"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "index"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    :goto_0
    iput v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->gameIndex:I

    .line 45
    const-string v5, "times"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "times"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    :goto_1
    iput v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->timesCounter:I

    .line 46
    const-string v5, "entiretimes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "entiretimes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    iput v4, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->entireTimes:I

    .line 47
    const-string v4, "lastmodified"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "lastmodified"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_2
    iput-wide v4, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->lastModified:J

    move-object v1, v2

    .line 53
    .end local v2    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .end local v3    # "jsonGame":Lorg/json/JSONObject;
    .restart local v1    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    :cond_1
    :goto_3
    return-object v1

    .end local v1    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .restart local v2    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .restart local v3    # "jsonGame":Lorg/json/JSONObject;
    :cond_2
    move v5, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 47
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    goto :goto_2

    .line 48
    .end local v2    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .end local v3    # "jsonGame":Lorg/json/JSONObject;
    .restart local v1    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    :goto_4
    const-string v4, "getFullScreenGame"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 48
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .restart local v2    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .restart local v3    # "jsonGame":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .restart local v1    # "fullScreenGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    goto :goto_4
.end method

.method protected saveFSGameToPreference(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;)V
    .locals 7
    .param p1, "fullScreenGame"    # Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    .prologue
    .line 104
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v2, "jsonGame":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 107
    .local v1, "gameStr":Ljava/lang/String;
    :try_start_0
    const-string v4, "package"

    iget-object v5, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v4, "image"

    iget-object v5, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v4, "index"

    iget v5, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->gameIndex:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v4, "entiretimes"

    iget v5, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->entireTimes:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v4, "times"

    iget v5, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->timesCounter:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v4, "lastmodified"

    iget-wide v5, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->lastModified:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    if-eqz v1, :cond_0

    .line 119
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->mainActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v3

    .line 120
    .local v3, "preferences":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v4, "fullscreen"

    invoke-virtual {v3, v4, v1}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v3    # "preferences":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    const-string v4, "Platform"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JSONException when saving full screen game:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
