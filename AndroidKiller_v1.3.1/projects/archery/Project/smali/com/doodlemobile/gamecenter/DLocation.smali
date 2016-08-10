.class Lcom/doodlemobile/gamecenter/DLocation;
.super Ljava/lang/Object;
.source "DLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;,
        Lcom/doodlemobile/gamecenter/DLocation$LocationResult;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->gps_enabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->network_enabled:Z

    .line 20
    new-instance v0, Lcom/doodlemobile/gamecenter/DLocation$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DLocation$1;-><init>(Lcom/doodlemobile/gamecenter/DLocation;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 49
    new-instance v0, Lcom/doodlemobile/gamecenter/DLocation$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DLocation$2;-><init>(Lcom/doodlemobile/gamecenter/DLocation;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 13
    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;Lcom/doodlemobile/gamecenter/DLocation$LocationResult;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    move v0, v7

    .line 119
    :goto_0
    return v0

    .line 83
    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    .line 84
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 86
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 85
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    move v0, v8

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->gps_enabled:Z

    .line 95
    :goto_1
    const-string v0, "network"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->network_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_2
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->gps_enabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->network_enabled:Z

    if-nez v0, :cond_5

    move v0, v8

    .line 102
    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->gps_enabled:Z

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    goto :goto_2

    .line 98
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 104
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->gps_enabled:Z

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 106
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 107
    :cond_6
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->network_enabled:Z

    if-eqz v0, :cond_7

    .line 108
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 109
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    :cond_7
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    .line 115
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    new-instance v1, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;-><init>(Lcom/doodlemobile/gamecenter/DLocation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v7

    .line 119
    goto/16 :goto_0

    .line 110
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move v0, v8

    .line 111
    goto/16 :goto_0

    .line 116
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move v0, v8

    .line 117
    goto/16 :goto_0
.end method

.method public isProviderSupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "in_Provider"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 149
    .local v1, "lv_List":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .local v2, "lv_N":I
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v3, v4

    .line 157
    .end local v1    # "lv_List":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "lv_N":I
    :goto_1
    return v3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .restart local v1    # "lv_List":Ljava/util/List;, "Ljava/util/List<*>;"
    move v3, v4

    .line 146
    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "lv_N":I
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const/4 v3, 0x1

    goto :goto_1

    .line 149
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "lv_List":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "lv_N":I
    :catch_1
    move-exception v3

    move v3, v4

    .line 157
    goto :goto_1
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 126
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->timer1:Ljava/util/Timer;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerGps:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method
