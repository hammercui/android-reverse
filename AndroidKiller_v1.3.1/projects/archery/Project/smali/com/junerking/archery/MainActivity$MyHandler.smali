.class Lcom/junerking/archery/MainActivity$MyHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/junerking/archery/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/junerking/archery/MainActivity;


# direct methods
.method private constructor <init>(Lcom/junerking/archery/MainActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/junerking/archery/MainActivity;Lcom/junerking/archery/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/junerking/archery/MainActivity;
    .param p2, "x1"    # Lcom/junerking/archery/MainActivity$1;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/junerking/archery/MainActivity$MyHandler;-><init>(Lcom/junerking/archery/MainActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 224
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 231
    :sswitch_0
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    # getter for: Lcom/junerking/archery/MainActivity;->purchaseHelper:Lcom/junerking/archery/PurchaseHelper;
    invoke-static {v4}, Lcom/junerking/archery/MainActivity;->access$200(Lcom/junerking/archery/MainActivity;)Lcom/junerking/archery/PurchaseHelper;

    move-result-object v4

    sget-object v5, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->what:I

    const v7, 0x186a1

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/junerking/archery/PurchaseHelper;->callBilling(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :sswitch_1
    const-string v4, "handler billing create"

    invoke-static {v4}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    # getter for: Lcom/junerking/archery/MainActivity;->purchaseHelper:Lcom/junerking/archery/PurchaseHelper;
    invoke-static {v4}, Lcom/junerking/archery/MainActivity;->access$200(Lcom/junerking/archery/MainActivity;)Lcom/junerking/archery/PurchaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/junerking/archery/PurchaseHelper;->createBilling()V

    goto :goto_0

    .line 242
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id=ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-virtual {v5}, Lcom/junerking/archery/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "referrer":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 247
    :try_start_0
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-virtual {v4, v1}, Lcom/junerking/archery/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    const-string v5, "Market Not Work"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "referrer":Ljava/lang/String;
    :sswitch_3
    const-string v4, "show feature view!"

    invoke-static {v4}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 257
    :try_start_1
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    # getter for: Lcom/junerking/archery/MainActivity;->FEATURE_VIEW_RECT_BOTTOM:Landroid/graphics/Rect;
    invoke-static {}, Lcom/junerking/archery/MainActivity;->access$300()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    :try_start_2
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 272
    :catch_2
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_5
    :try_start_3
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    # getter for: Lcom/junerking/archery/MainActivity;->fakeLoading:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/junerking/archery/MainActivity;->access$400(Lcom/junerking/archery/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 281
    :catch_3
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_6
    :try_start_4
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 292
    :catch_4
    move-exception v0

    .line 293
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_7
    :try_start_5
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 302
    :catch_5
    move-exception v0

    .line 303
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_8
    :try_start_6
    const-string v4, "show full screen small exit!"

    invoke-static {v4}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 312
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x11

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 315
    .local v3, "xmsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 317
    .end local v3    # "xmsg":Landroid/os/Message;
    :catch_6
    move-exception v0

    .line 318
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_9
    const-string v4, "hide full screen small"

    invoke-static {v4}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 326
    :try_start_7
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/junerking/archery/MainActivity$MyHandler;->this$0:Lcom/junerking/archery/MainActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 329
    :catch_7
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_1
        0x186a1 -> :sswitch_0
        0x186a2 -> :sswitch_0
        0x186a3 -> :sswitch_0
        0x186a4 -> :sswitch_0
        0x186a5 -> :sswitch_0
        0x186a6 -> :sswitch_0
    .end sparse-switch
.end method
