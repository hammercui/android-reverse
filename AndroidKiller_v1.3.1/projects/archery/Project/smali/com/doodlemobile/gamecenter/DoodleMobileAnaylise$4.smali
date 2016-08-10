.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$4;
.super Lcom/doodlemobile/gamecenter/DLocation$LocationResult;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$4;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    .line 485
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$4;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$25(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$4;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$26(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
