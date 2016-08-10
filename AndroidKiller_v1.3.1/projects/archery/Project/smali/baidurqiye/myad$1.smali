.class Lbaidurqiye/myad$1;
.super Ljava/lang/Object;
.source "myad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaidurqiye/myad;->baiduad(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mactivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbaidurqiye/myad$1;->val$mactivity:Landroid/app/Activity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    iget-object v2, p0, Lbaidurqiye/myad$1;->val$mactivity:Landroid/app/Activity;

    const-string v3, "mysp"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "msharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "start"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 29
    .local v1, "start":I
    if-lez v1, :cond_0

    .line 31
    new-instance v2, Lbaidurqiye/InterstitialAds;

    invoke-direct {v2}, Lbaidurqiye/InterstitialAds;-><init>()V

    iget-object v3, p0, Lbaidurqiye/myad$1;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x92925

    invoke-virtual {v2, v3, v4}, Lbaidurqiye/InterstitialAds;->onClickInterstitial(Landroid/content/Context;I)V

    .line 32
    new-instance v2, Lbaidurqiye/NotificationAds;

    invoke-direct {v2}, Lbaidurqiye/NotificationAds;-><init>()V

    iget-object v3, p0, Lbaidurqiye/myad$1;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x97634

    invoke-virtual {v2, v3, v4}, Lbaidurqiye/NotificationAds;->onClickNotificationAD(Landroid/content/Context;I)V

    .line 34
    :cond_0
    return-void
.end method
