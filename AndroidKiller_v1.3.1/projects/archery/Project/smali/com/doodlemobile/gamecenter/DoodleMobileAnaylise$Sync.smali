.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;
.super Ljava/lang/Object;
.source "DoodleMobileAnaylise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sync"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 28

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    const-string v24, "Sync to server"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Thread id:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->getId()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$8(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 872
    const-string v24, "DoodleMobileAnaylise"

    const-string v25, "no network to upload analytics logs"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 878
    :cond_1
    :try_start_1
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$8(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->MC_DIRECTORY:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$15()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    .line 879
    .local v16, "mcDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$16()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    .local v3, "anDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 882
    new-instance v12, Lorg/json/JSONObject;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mJsonObj:Lorg/json/JSONObject;
    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$17(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Lorg/json/JSONObject;

    move-result-object v24

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "ll"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-string v27, "g"

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const-string v27, "id"

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 883
    .local v12, "header":Lorg/json/JSONObject;
    const-string v24, "a"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDMAppId()Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$18(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    const-string v24, "p"

    const-string v25, "android"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    const-string v24, "m"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getMobclixVersion()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 886
    const-string v24, "v"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDMAppVersion()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v24, "d"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceId()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string v24, "dm"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceModel()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string v24, "dv"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getAndroidVersion()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v24, "hwdm"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string v24, "m"

    const-string v25, "2.3"

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string v24, "lg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getLanguage()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string v24, "lo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getLocale()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v24, "pn"

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v25

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mPackageName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$9(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 897
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_0

    .line 900
    const/4 v9, 0x0

    .line 901
    .local v9, "errorOccur":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v24, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v24

    if-lt v13, v0, :cond_2

    .line 978
    .end local v3    # "anDir":Ljava/io/File;
    .end local v9    # "errorOccur":Z
    .end local v10    # "files":[Ljava/io/File;
    .end local v12    # "header":Lorg/json/JSONObject;
    .end local v13    # "i":I
    .end local v16    # "mcDir":Ljava/io/File;
    :goto_2
    const/16 v24, 0x0

    :try_start_2
    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$21(Ljava/lang/String;)V

    .line 979
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$6(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 870
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 902
    .restart local v3    # "anDir":Ljava/io/File;
    .restart local v9    # "errorOccur":Z
    .restart local v10    # "files":[Ljava/io/File;
    .restart local v12    # "header":Lorg/json/JSONObject;
    .restart local v13    # "i":I
    .restart local v16    # "mcDir":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 903
    .local v6, "data":Ljava/lang/StringBuffer;
    const-string v24, "p=android"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    const-string v24, "&a="

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v25

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDMAppId()Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$18(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    const-string v24, "&m="

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getMobclixVersion()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    const-string v24, "&d="

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceId()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 907
    const-string v24, "&v="

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gInstance:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$0()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v25

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->dmAppVersion:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$19(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-static/range {v25 .. v26}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    const-string v24, "&j=[{\"hb\":"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ",\"ev\":["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    new-instance v11, Ljava/io/FileInputStream;

    aget-object v24, v10, v13

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 911
    .local v11, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 912
    .local v4, "bis":Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 914
    .local v7, "dis":Ljava/io/DataInputStream;
    :goto_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->available()I

    move-result v24

    if-nez v24, :cond_6

    .line 917
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 918
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 919
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 921
    const-string v24, "]}]"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 925
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 926
    .local v20, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$21(Ljava/lang/String;)V

    .line 927
    const-string v24, "}{"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 929
    const-string v24, "\\}\\{"

    const-string v25, "},{"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$21(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 934
    :cond_3
    const/16 v22, 0x0

    .line 935
    .local v22, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 937
    .local v5, "conn":Ljava/net/HttpURLConnection;
    :try_start_4
    new-instance v23, Ljava/net/URL;

    const-string v24, "http://data2.doodlemobile.com:8080/dmdata_zmm/ReceiveServlet"

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 938
    .end local v22    # "url":Ljava/net/URL;
    .local v23, "url":Ljava/net/URL;
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 940
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 941
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 942
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 943
    const-string v24, "POST"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 946
    .local v17, "ost":Ljava/io/OutputStream;
    new-instance v18, Ljava/io/PrintWriter;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 947
    .local v18, "pw":Ljava/io/PrintWriter;
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncContents:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$20()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->flush()V

    .line 950
    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintWriter;->close()V

    .line 952
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 953
    .local v19, "rd":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 955
    .local v14, "line":Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, "templine":Ljava/lang/String;
    if-nez v21, :cond_7

    .line 961
    const-string v24, "1"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 962
    const/4 v9, 0x1

    .line 964
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v22, v23

    .line 970
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "ost":Ljava/io/OutputStream;
    .end local v18    # "pw":Ljava/io/PrintWriter;
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .end local v21    # "templine":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URL;
    .restart local v22    # "url":Ljava/net/URL;
    :goto_5
    if-nez v9, :cond_0

    .line 973
    :try_start_6
    aget-object v24, v10, v13

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 901
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 915
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v20    # "s":Ljava/lang/String;
    .end local v22    # "url":Ljava/net/URL;
    :cond_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 975
    .end local v3    # "anDir":Ljava/io/File;
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "data":Ljava/lang/StringBuffer;
    .end local v7    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "errorOccur":Z
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "header":Lorg/json/JSONObject;
    .end local v13    # "i":I
    .end local v16    # "mcDir":Ljava/io/File;
    :catch_0
    move-exception v15

    .line 976
    .local v15, "localException1":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 956
    .end local v15    # "localException1":Ljava/lang/Exception;
    .restart local v3    # "anDir":Ljava/io/File;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "data":Ljava/lang/StringBuffer;
    .restart local v7    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "errorOccur":Z
    .restart local v10    # "files":[Ljava/io/File;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "header":Lorg/json/JSONObject;
    .restart local v13    # "i":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "mcDir":Ljava/io/File;
    .restart local v17    # "ost":Ljava/io/OutputStream;
    .restart local v18    # "pw":Ljava/io/PrintWriter;
    .restart local v19    # "rd":Ljava/io/BufferedReader;
    .restart local v20    # "s":Ljava/lang/String;
    .restart local v21    # "templine":Ljava/lang/String;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_7
    if-nez v14, :cond_4

    .line 958
    move-object/from16 v14, v21

    goto :goto_4

    .line 965
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "ost":Ljava/io/OutputStream;
    .end local v18    # "pw":Ljava/io/PrintWriter;
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .end local v21    # "templine":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URL;
    .restart local v22    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 966
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 967
    const/4 v9, 0x1

    goto :goto_5

    .line 965
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v22    # "url":Ljava/net/URL;
    .restart local v23    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    move-object/from16 v22, v23

    .end local v23    # "url":Ljava/net/URL;
    .restart local v22    # "url":Ljava/net/URL;
    goto :goto_6
.end method
