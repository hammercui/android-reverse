.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;
.super Ljava/lang/Object;
.source "DoodleMobileAnaylise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRemoteConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;)V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 835
    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$8(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 837
    .local v1, "package_manager":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$9(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$10(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :goto_0
    :try_start_2
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$9(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$11(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Landroid/location/Criteria;)V

    .line 844
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->locationCriteria:Landroid/location/Criteria;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$12(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/location/Criteria;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 845
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$13(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)V

    .line 854
    :goto_1
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$9(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 855
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$14(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 862
    .end local v1    # "package_manager":Landroid/content/pm/PackageManager;
    :goto_2
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->sync()V

    .line 863
    return-void

    .line 838
    .restart local v1    # "package_manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const-string v3, "null"

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$10(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 859
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "package_manager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "package_manager":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_4
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$9(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 847
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$11(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Landroid/location/Criteria;)V

    .line 848
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->locationCriteria:Landroid/location/Criteria;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$12(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/location/Criteria;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 849
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$13(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)V

    goto :goto_1

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$13(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)V

    goto :goto_1

    .line 857
    :cond_2
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$14(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method
