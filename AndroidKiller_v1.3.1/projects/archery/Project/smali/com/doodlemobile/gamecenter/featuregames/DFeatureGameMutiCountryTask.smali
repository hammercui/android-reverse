.class public Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;
.super Landroid/os/AsyncTask;
.source "DFeatureGameMutiCountryTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/NameValuePair;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MutiCountryURL:Ljava/lang/String; = "http://f211.doodlemobile.com/feature_server/geo-ip/test.php"


# instance fields
.field private ShowAdmob:Z

.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    .line 37
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .locals 18
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 42
    const/4 v8, 0x0

    .line 43
    .local v8, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v1

    .line 44
    .local v1, "cache":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v12, "showadmob"

    invoke-virtual {v1, v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->isExist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "showadmob-lastmodified"

    invoke-virtual {v1, v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->isExist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 45
    const-string v12, "showadmob-lastmodified"

    invoke-virtual {v1, v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 46
    .local v6, "lastModified":Ljava/lang/Long;
    const-string v12, "showadmob-cachecontrol"

    invoke-virtual {v1, v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->isExist(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 47
    const-string v12, "showadmob-cachecontrol"

    invoke-virtual {v1, v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 48
    .local v2, "cacheControl":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    .line 49
    const-string v12, "showadmob"

    invoke-virtual {v1, v12}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z

    .line 50
    const/4 v12, 0x0

    .line 115
    .end local v2    # "cacheControl":Ljava/lang/Long;
    .end local v6    # "lastModified":Ljava/lang/Long;
    :goto_0
    return-object v12

    .line 52
    .restart local v2    # "cacheControl":Ljava/lang/Long;
    .restart local v6    # "lastModified":Ljava/lang/Long;
    :cond_0
    const/4 v7, 0x0

    .line 54
    .local v7, "requestTimes":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 55
    const-string v12, "http://f211.doodlemobile.com/feature_server/geo-ip/test.php"

    const/4 v13, 0x0

    new-array v13, v13, [Lorg/apache/http/NameValuePair;

    invoke-static {v12, v13}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v8

    .line 56
    const-string v12, "getMutiCountry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez v8, :cond_2

    const/4 v12, 0x2

    .line 53
    if-lt v7, v12, :cond_1

    .line 79
    .end local v2    # "cacheControl":Ljava/lang/Long;
    .end local v6    # "lastModified":Ljava/lang/Long;
    .end local v7    # "requestTimes":I
    :cond_2
    :goto_1
    const/4 v11, 0x0

    .line 80
    .local v11, "userCountry":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 82
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v9, "ret":Lorg/json/JSONObject;
    const-string v12, "retcode"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 84
    .local v10, "retcode":I
    const-string v12, "getMutiCountry"

    const-string v13, "message"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v12, 0x1

    if-eq v10, v12, :cond_8

    .line 86
    const-string v12, "country"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    .line 91
    :goto_2
    const-string v12, "adMobCountries"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 92
    .local v3, "countries":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v5, v12, :cond_9

    .line 100
    :goto_4
    const/4 v12, 0x1

    if-eq v10, v12, :cond_3

    const-string v12, "Last-Modified"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 101
    const-string v12, "showadmob"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z

    invoke-virtual {v1, v12, v13}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v12, "showadmob-lastmodified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->putLong(Ljava/lang/String;J)V

    .line 103
    const-string v12, "Cache-Control"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 104
    const-string v12, "showadmob-cachecontrol"

    const-string v13, "Cache-Control"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v3    # "countries":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v9    # "ret":Lorg/json/JSONObject;
    .end local v10    # "retcode":I
    :cond_3
    :goto_5
    const-string v12, "getMutiCountry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v8

    .line 115
    goto/16 :goto_0

    .line 60
    .end local v11    # "userCountry":Ljava/lang/String;
    .restart local v6    # "lastModified":Ljava/lang/Long;
    :cond_4
    const/4 v7, 0x0

    .line 62
    .restart local v7    # "requestTimes":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 63
    const-string v12, "http://f211.doodlemobile.com/feature_server/geo-ip/test.php"

    const/4 v13, 0x1

    new-array v13, v13, [Lorg/apache/http/NameValuePair;

    const/4 v14, 0x0

    .line 64
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "If-Modified-Since"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v15, v13, v14

    .line 63
    invoke-static {v12, v13}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v8

    .line 65
    const-string v12, "getMutiCountry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez v8, :cond_2

    const/4 v12, 0x2

    .line 61
    if-lt v7, v12, :cond_5

    goto/16 :goto_1

    .line 69
    .end local v6    # "lastModified":Ljava/lang/Long;
    .end local v7    # "requestTimes":I
    :cond_6
    if-nez v8, :cond_2

    .line 70
    const/4 v7, 0x0

    .line 72
    .restart local v7    # "requestTimes":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 73
    const-string v12, "http://f211.doodlemobile.com/feature_server/geo-ip/test.php"

    const/4 v13, 0x0

    new-array v13, v13, [Lorg/apache/http/NameValuePair;

    invoke-static {v12, v13}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->post(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v8

    .line 74
    const-string v12, "getMutiCountry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez v8, :cond_2

    const/4 v12, 0x2

    .line 71
    if-lt v7, v12, :cond_7

    goto/16 :goto_1

    .line 88
    .end local v7    # "requestTimes":I
    .restart local v9    # "ret":Lorg/json/JSONObject;
    .restart local v10    # "retcode":I
    .restart local v11    # "userCountry":Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 89
    const-string v12, "getMutiCountry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 109
    .end local v9    # "ret":Lorg/json/JSONObject;
    .end local v10    # "retcode":I
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Lorg/json/JSONException;
    const-string v12, "getMutiCountry"

    const-string v13, "error!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 93
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v3    # "countries":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v9    # "ret":Lorg/json/JSONObject;
    .restart local v10    # "retcode":I
    :cond_9
    if-eqz v11, :cond_a

    :try_start_2
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 95
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 92
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 123
    iput-boolean v5, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z

    .line 125
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    if-nez v7, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 129
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v7, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->ShowAdmob:Z

    if-eqz v7, :cond_2

    sget v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    sget v8, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    if-ne v7, v8, :cond_5

    .line 130
    :cond_2
    sget v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    if-eqz v7, :cond_0

    .line 132
    sget v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    sput-object v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    .line 133
    sget-object v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    sget-boolean v8, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    if-eqz v8, :cond_4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    sget-object v6, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    move v5, v6

    .line 133
    goto :goto_1

    .line 135
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 137
    sget v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    sput-object v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    .line 138
    sget-object v7, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    sget-boolean v8, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    .line 140
    :cond_7
    sget v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    if-eqz v5, :cond_0

    .line 142
    sget v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    .line 143
    sget-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 144
    sget-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 145
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 146
    new-instance v5, Lcom/google/android/gms/monkey/AdRequest$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/monkey/AdRequest$Builder;-><init>()V

    .line 147
    sget-object v6, Lcom/google/android/gms/monkey/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/monkey/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/monkey/AdRequest$Builder;

    move-result-object v5

    .line 148
    invoke-virtual {v5}, Lcom/google/android/gms/monkey/AdRequest$Builder;->build()Lcom/google/android/gms/monkey/AdRequest;

    move-result-object v1

    .line 149
    .local v1, "adRequest":Lcom/google/android/gms/monkey/AdRequest;
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/monkey/AdView;

    move-object v5, v0

    new-instance v6, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask$1;

    invoke-direct {v6, p0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask$1;-><init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/monkey/AdView;->setAdListener(Lcom/google/android/gms/monkey/AdListener;)V

    .line 156
    check-cast v4, Lcom/google/android/gms/monkey/AdView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4, v1}, Lcom/google/android/gms/monkey/AdView;->loadAd(Lcom/google/android/gms/monkey/AdRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
