.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;
.super Landroid/os/AsyncTask;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;->val$activity:Landroid/app/Activity;

    .line 431
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "adInfo":Lcom/google/android/gms/monkey/identifier/AdvertisingIdClient$Info;
    const/4 v1, 0x0

    .line 439
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v2

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$8(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/monkey/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/monkey/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/google/android/gms/monkey/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {v0}, Lcom/google/android/gms/monkey/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-object v1

    .line 442
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 453
    if-eqz p1, :cond_2

    .line 454
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$23(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    const-string v1, "1234"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->deviceId:Ljava/lang/String;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$24(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 468
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    :cond_1
    return-void

    .line 457
    :cond_2
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$23(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_1
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->deviceId:Ljava/lang/String;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$24(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->deviceId:Ljava/lang/String;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$24(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->deviceId:Ljava/lang/String;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$24(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    :cond_3
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$23(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
