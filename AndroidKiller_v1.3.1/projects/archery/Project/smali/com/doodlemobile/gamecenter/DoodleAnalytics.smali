.class public Lcom/doodlemobile/gamecenter/DoodleAnalytics;
.super Landroid/app/Application;
.source "DoodleAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;
    }
.end annotation


# static fields
.field public static GENERAL_TRACKER:I


# instance fields
.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics;->GENERAL_TRACKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleAnalytics;->mTrackers:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method declared-synchronized getTracker(Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .param p1, "trackerId"    # Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleAnalytics;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 50
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 51
    sget-object v2, Lcom/doodlemobile/gamecenter/Platform;->MY_GA_ID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "DoodleAnalytics can\'t be null, init MY_GA_ID before Platfrom.onCreate()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 54
    .restart local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/doodlemobile/gamecenter/Platform;->MY_GA_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 56
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 57
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleAnalytics;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_1
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleAnalytics;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2
.end method
