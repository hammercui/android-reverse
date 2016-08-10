.class public Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;
.super Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;
.source "LoadNetworkElsePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;-><init>(Landroid/app/Activity;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getFSGame()Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 22
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Nowhere:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    .line 23
    .local v0, "from":Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;
    const-string v4, "FullScreen"

    const-string v5, "LOAD NET ELSE PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;->getGameJsonStringFromNet()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "gameJsonStr":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 26
    const-string v4, "FullScreen"

    const-string v5, "return null from net, try to get from preference"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;->getGameJsonStringFromPreference()Ljava/lang/String;

    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Cache:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    .line 30
    const-string v4, "FullScreen"

    const-string v5, "get content from cache"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 41
    .local v1, "fsGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    const-string v4, "FullScreen"

    const-string v5, "parse game json string"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Nowhere:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    if-eq v0, v4, :cond_1

    .line 43
    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;->parseJsonStringToFSGame(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->isEntiredAccrodingToLastModified()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v1, v3

    .line 49
    .end local v1    # "fsGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    :cond_1
    :goto_1
    return-object v1

    .line 32
    :cond_2
    const-string v4, "you have installed all fs games."

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 33
    goto :goto_1

    .line 35
    :cond_3
    const-string v4, "FullScreen"

    const-string v5, "get content from net"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;->mainActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v4

    const-string v5, "hasclicked"

    invoke-virtual {v4, v5}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->delete(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Net:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    goto :goto_0

    .line 46
    .restart local v1    # "fsGame":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    :cond_4
    sget-object v3, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Net:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    if-ne v0, v3, :cond_1

    .line 47
    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;->saveFSGameToPreference(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;)V

    goto :goto_1
.end method
