.class public Lcom/doodlemobile/gamecenter/utils/DGlobalParams;
.super Ljava/lang/Object;
.source "DGlobalParams.java"


# static fields
.field public static final SERVER_ANALYTICS_URL:Ljava/lang/String; = "http://data2.doodlemobile.com:8080/dmdata_zmm/ReceiveServlet"

.field public static final SERVER_FULLSCREEN_URL:Ljava/lang/String; = "http://192.168.1.241:8080/feature_server/featurescreen"

.field public static final SERVER_MOREAPPS_URL:Ljava/lang/String; = "http://featured.perfectionholic.com:8080/moregames/index_app.html"

.field public static final SERVER_MOREGAMES_URL:Ljava/lang/String; = "http://dmp.baopiqi.com/api/up.php"

.field public static final SERVER_NEW_FEATUREVIEW_TIME_URL:Ljava/lang/String; = "http://newfeatureview11.perfectionholic.com/featureview/gettime/"

.field public static final SERVER_NEW_FEATUREVIEW_URL:Ljava/lang/String; = "http://newfeatureview11.perfectionholic.com/featureview/getfeatureview/"

.field public static final SERVER_POP_APPS_URL:Ljava/lang/String; = "http://featured.perfectionholic.com:8080/feature_appserver/recommands"

.field public static final SERVER_TEST_FEATUREVIEW_TIME_URL:Ljava/lang/String; = "http://ec2-184-73-77-17.compute-1.amazonaws.com/featureview/gettime/"

.field public static final SERVER_USER_BEHAVIOR_URL:Ljava/lang/String; = "http://192.168.1.241:8080/featureserver/receiveuesraction"

.field public static final Server_CODE:Ljava/lang/String; = "code"

.field public static final Server_DATA:Ljava/lang/String; = "data"

.field public static final Server_MSG:Ljava/lang/String; = "msg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "MarketUri"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "\\?id="

    .line 77
    .local v4, "re1":Ljava/lang/String;
    const-string v3, "[^\\.A-Za-z]"

    .line 79
    .local v3, "re":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v2, v5, v6

    .line 80
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInstalledTheseGames(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "com.tapglider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "x.JewelsDeluxe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "com.threed.bowling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "com.wordsmobile.RollerBall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "com.a1.game.vszombies"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "com.sniper.activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "com.shootbubble.bubbledexlue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "com.forthblue.pool"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "com.candydroid.breakblock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "com.junerking.ninjia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOldGames(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "pkgName":Ljava/lang/String;
    :try_start_0
    const-string v3, "com.wordsmobile.slot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    const-string v3, "com.kiwifruitmobile.sudoku"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const-string v3, "com.candydroid.breakblock"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const-string v3, "com.forthblue.pool"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    const-string v3, "com.wordsmobile.hunterville"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    const-string v3, "com.shootbubble.bubbledexlue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    const-string v3, "com.sniper.activity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    const-string v3, "com.wordsmobile.rugby"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const-string v3, "com.sword.game.bubble"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    const-string v3, "com.baileyz.bluppypro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    const-string v3, "com.threed.bowling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    const-string v3, "com.doodle.restaurant"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const-string v3, "com.tapglider"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    const-string v3, "com.leagem.chesslive"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return v2

    .line 40
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
