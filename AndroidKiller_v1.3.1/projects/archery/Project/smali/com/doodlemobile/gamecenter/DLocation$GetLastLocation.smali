.class Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "DLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLastLocation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DLocation;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DLocation;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    .line 167
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 168
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    .line 169
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :goto_0
    const/4 v1, 0x0

    .line 174
    .local v1, "net_loc":Landroid/location/Location;
    const/4 v0, 0x0

    .line 175
    .local v0, "gps_loc":Landroid/location/Location;
    :try_start_1
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-boolean v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->gps_enabled:Z

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    .line 177
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-boolean v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->network_enabled:Z

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->lm:Landroid/location/LocationManager;

    .line 180
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 183
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    .line 186
    invoke-virtual {v2, v0}, Lcom/doodlemobile/gamecenter/DLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 204
    :goto_1
    return-void

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    .line 189
    invoke-virtual {v2, v1}, Lcom/doodlemobile/gamecenter/DLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 202
    :catch_0
    move-exception v2

    goto :goto_1

    .line 193
    :cond_3
    if-eqz v0, :cond_4

    .line 194
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/doodlemobile/gamecenter/DLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 197
    :cond_4
    if-eqz v1, :cond_5

    .line 198
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/doodlemobile/gamecenter/DLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DLocation;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DLocation;->locationResult:Lcom/doodlemobile/gamecenter/DLocation$LocationResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/DLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 170
    .end local v0    # "gps_loc":Landroid/location/Location;
    .end local v1    # "net_loc":Landroid/location/Location;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
