.class public Lcom/example/jifei/sp2;
.super Ljava/lang/Object;
.source "sp2.java"


# static fields
.field public static ss:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mysp2(Landroid/app/Activity;)V
    .locals 14
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    const/4 v12, 0x0

    .line 34
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 35
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 36
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .local v3, "mscreenheight":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 38
    .local v4, "mscreenwidth":I
    const-string v10, "mycode"

    invoke-virtual {p0, v10, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 39
    .local v6, "msharedPreferences":Landroid/content/SharedPreferences;
    const-string v10, "ss"

    const/4 v11, 0x2

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/example/jifei/sp2;->ss:I

    .line 40
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 43
    new-instance v7, Landroid/widget/PopupWindow;

    .line 44
    sget v10, Lcom/example/jifei/sp2;->ss:I

    mul-int/2addr v10, v4

    div-int/lit8 v10, v10, 0x3

    div-int/lit8 v11, v3, 0x10

    .line 43
    invoke-direct {v7, v2, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 45
    .local v7, "popupWindow":Landroid/widget/PopupWindow;
    const-string v10, "com.junerking.archery"

    invoke-virtual {p0, v10, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 46
    .local v5, "mshared":Landroid/content/SharedPreferences;
    const-string v10, "UserCoins"

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "jjcoin":I
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v8, "slinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    new-instance v9, Landroid/widget/PopupWindow;

    .line 51
    div-int/lit8 v10, v4, 0x2

    div-int/lit8 v11, v3, 0x10

    .line 50
    invoke-direct {v9, v8, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 52
    .local v9, "spopupWindow":Landroid/widget/PopupWindow;
    new-instance v10, Lcom/example/jifei/sp2$1;

    invoke-direct {v10, p0}, Lcom/example/jifei/sp2$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/example/jifei/sp2$2;

    invoke-direct {v11, v7, p0, v4}, Lcom/example/jifei/sp2$2;-><init>(Landroid/widget/PopupWindow;Landroid/app/Activity;I)V

    .line 72
    const-wide/16 v12, 0xdac

    .line 62
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    const v10, 0x186a0

    if-ge v1, v10, :cond_0

    .line 75
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lcom/example/jifei/sp2$3;

    invoke-direct {v11, v9, p0, v3}, Lcom/example/jifei/sp2$3;-><init>(Landroid/widget/PopupWindow;Landroid/app/Activity;I)V

    .line 84
    const-wide/16 v12, 0xce4

    .line 75
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_0
    new-instance v10, Lcom/example/jifei/sp2$4;

    invoke-direct {v10, p0}, Lcom/example/jifei/sp2$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public static mysp3(Landroid/app/Activity;I)V
    .locals 32
    .param p0, "mactivity"    # Landroid/app/Activity;
    .param p1, "i"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 104
    const/16 v16, 0x0

    .line 107
    .local v16, "money":Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 108
    const-string v16, "2"

    .line 120
    :cond_0
    :goto_0
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    .local v11, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    .line 123
    .local v18, "mscreenheight":I
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    .line 125
    .local v19, "mscreenwidth":I
    new-instance v15, Lcom/nuage/pay/CommandCreator;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/nuage/pay/CommandCreator;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 127
    .local v15, "mcommandCreator":Lcom/nuage/pay/CommandCreator;
    invoke-virtual {v15}, Lcom/nuage/pay/CommandCreator;->getKeyword()Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, "keyword":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/nuage/pay/CommandCreator;->getShortCode()Ljava/lang/String;

    move-result-object v25

    .line 129
    .local v25, "shorcode":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "By clicking Download/Play button, the application will send the SMS message with the text "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 129
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 131
    .local v21, "mysend":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v29, ".SMS price is RM"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " .00(Excl. GST). The service is provided by NuageTimes. Customer Support: +03 86010105, support@centili.com. Service compatibility: All Android devices  Please check your phone specs for service compatibility. This service operates according to the Malaysian code of conduct for SMS services."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 131
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 134
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v20, "mtextView":Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/high16 v28, 0x41200000    # 10.0f

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    sput-object p0, Lcom/example/jifei/assetsutil;->mactivity:Landroid/app/Activity;

    .line 139
    const-string v28, "closebutton.png"

    invoke-static/range {v28 .. v28}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 140
    .local v6, "bgimg0":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v5, "bd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "coins"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".png"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 144
    .local v12, "goldbitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v13, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .local v13, "golddr":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v17, "mrelativeLayout":Landroid/widget/RelativeLayout;
    new-instance v26, Landroid/widget/PopupWindow;

    .line 147
    const/16 v28, -0x2

    .line 148
    mul-int/lit8 v29, v18, 0xe

    div-int/lit8 v29, v29, 0x1e

    add-int/lit8 v29, v29, 0x1e

    .line 146
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 149
    .local v26, "sp3popupWindow":Landroid/widget/PopupWindow;
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v7, "chahaoimageView":Landroid/widget/ImageView;
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    const/16 v28, -0x2

    .line 153
    const/16 v29, -0x2

    .line 151
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v8, "chahaolayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0xb

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    const/16 v28, 0xa

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v9, "coinsimageView":Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    mul-int/lit8 v28, v19, 0x4

    div-int/lit8 v28, v28, 0x5

    mul-int/lit8 v29, v18, 0xe

    div-int/lit8 v29, v29, 0x1e

    .line 158
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v10, "coinslayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v28, v19, 0xa

    const/16 v29, 0x14

    const/16 v30, 0xa

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v28, v19, 0x4

    div-int/lit8 v28, v28, 0x5

    const/16 v29, -0x2

    invoke-direct/range {v27 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v27, "tttlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v28, v19, 0xa

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xc

    invoke-virtual/range {v27 .. v31}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    const/16 v28, 0xc

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const-string v28, "btn_ok.png"

    invoke-static/range {v28 .. v28}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 171
    .local v22, "okbt":Landroid/graphics/Bitmap;
    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v23, "okimageView":Landroid/widget/ImageView;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    new-instance v24, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v29, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v24, "oklayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0xe

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    div-int/lit8 v28, v19, 0x4

    div-int/lit8 v29, v18, 0x5

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    .line 179
    const/16 v29, 0x33

    const/16 v30, 0x0

    div-int/lit8 v31, v18, 0x6

    .line 178
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 180
    new-instance v28, Lcom/example/jifei/sp2$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/example/jifei/sp2$5;-><init>(Landroid/app/Activity;Lcom/nuage/pay/CommandCreator;Landroid/widget/PopupWindow;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v28, Lcom/example/jifei/sp2$6;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/example/jifei/sp2$6;-><init>(Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void

    .line 111
    .end local v5    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "bgimg0":Landroid/graphics/Bitmap;
    .end local v7    # "chahaoimageView":Landroid/widget/ImageView;
    .end local v8    # "chahaolayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "coinsimageView":Landroid/widget/ImageView;
    .end local v10    # "coinslayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "goldbitmap":Landroid/graphics/Bitmap;
    .end local v13    # "golddr":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "keyword":Ljava/lang/String;
    .end local v15    # "mcommandCreator":Lcom/nuage/pay/CommandCreator;
    .end local v17    # "mrelativeLayout":Landroid/widget/RelativeLayout;
    .end local v18    # "mscreenheight":I
    .end local v19    # "mscreenwidth":I
    .end local v20    # "mtextView":Landroid/widget/TextView;
    .end local v21    # "mysend":Ljava/lang/String;
    .end local v22    # "okbt":Landroid/graphics/Bitmap;
    .end local v23    # "okimageView":Landroid/widget/ImageView;
    .end local v24    # "oklayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "shorcode":Ljava/lang/String;
    .end local v26    # "sp3popupWindow":Landroid/widget/PopupWindow;
    .end local v27    # "tttlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v28, 0x2

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 112
    const-string v16, "5"

    .line 114
    goto/16 :goto_0

    :cond_2
    const/16 v28, 0x3

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 115
    const-string v16, "10"

    .line 117
    goto/16 :goto_0

    :cond_3
    const/16 v28, 0x4

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 118
    const-string v16, "5"

    goto/16 :goto_0
.end method

.method public static sp4(Landroid/app/Activity;)V
    .locals 24
    .param p0, "mactivity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 248
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    .line 249
    .local v17, "mscreenheight":I
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 250
    .local v18, "mscreenwidth":I
    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 252
    .local v7, "fourrelative":Landroid/widget/RelativeLayout;
    sput-object p0, Lcom/example/jifei/assetsutil;->mactivity:Landroid/app/Activity;

    .line 254
    const-string v20, "background.png"

    invoke-static/range {v20 .. v20}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 255
    .local v5, "bgimg0":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .local v4, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    new-instance v19, Landroid/widget/PopupWindow;

    mul-int/lit8 v20, v18, 0x9

    div-int/lit8 v20, v20, 0xa

    mul-int/lit8 v21, v17, 0x5

    div-int/lit8 v21, v21, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 258
    .local v19, "sp4popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    .line 259
    const/16 v21, 0x33

    div-int/lit8 v22, v18, 0x14

    div-int/lit8 v23, v17, 0x8

    .line 258
    invoke-virtual/range {v19 .. v23}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 260
    const-string v20, "money1.png"

    invoke-static/range {v20 .. v20}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 261
    .local v14, "money1":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 262
    .local v8, "imageView1":Landroid/widget/ImageView;
    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v20, v18, 0x3

    div-int/lit8 v20, v20, 0x4

    div-int/lit8 v21, v17, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v11, "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 265
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    const/16 v20, 0x0

    div-int/lit8 v21, v17, 0x28

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 268
    invoke-virtual {v7, v8, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const-string v20, "money2.png"

    invoke-static/range {v20 .. v20}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 271
    .local v15, "money2":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 272
    .local v9, "imageView2":Landroid/widget/ImageView;
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v20, v18, 0x3

    div-int/lit8 v20, v20, 0x4

    div-int/lit8 v21, v17, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .local v12, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    invoke-virtual {v7, v9, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const-string v20, "money3.png"

    invoke-static/range {v20 .. v20}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 278
    .local v16, "money3":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v10, "imageView3":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v20, v18, 0x3

    div-int/lit8 v20, v20, 0x4

    div-int/lit8 v21, v17, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v13, "layoutParams3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    div-int/lit8 v23, v17, 0x28

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 283
    const/16 v20, 0xe

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 284
    invoke-virtual {v7, v10, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v20, Lcom/example/jifei/sp2$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/example/jifei/sp2$7;-><init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v20, Lcom/example/jifei/sp2$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/example/jifei/sp2$8;-><init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    new-instance v20, Lcom/example/jifei/sp2$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/example/jifei/sp2$9;-><init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    return-void
.end method
