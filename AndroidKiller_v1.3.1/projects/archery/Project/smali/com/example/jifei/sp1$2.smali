.class Lcom/example/jifei/sp1$2;
.super Ljava/lang/Object;
.source "sp1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp1;->mysp1(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$macitivity:Landroid/app/Activity;

.field private final synthetic val$popupwindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/example/jifei/sp1$2;->val$popupwindow:Landroid/widget/PopupWindow;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 29
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 103
    const-string v14, "6"

    .line 104
    .local v14, "costmoney":Ljava/lang/String;
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v15, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    .line 108
    .local v17, "mscreenheight":I
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 110
    .local v18, "mscreenwidth":I
    new-instance v27, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .local v27, "startrelative":Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/PopupWindow;

    .line 114
    const/4 v3, -0x2

    .line 115
    mul-int/lit8 v4, v17, 0xe

    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x1e

    .line 112
    move-object/from16 v0, v27

    invoke-direct {v7, v0, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 116
    .local v7, "sp3popupWindow":Landroid/widget/PopupWindow;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    sput-object v3, Lcom/example/jifei/assetsutil;->mactivity:Landroid/app/Activity;

    .line 117
    new-instance v6, Lcom/nuage/pay/CommandCreator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    .line 118
    const-string v4, "6"

    .line 117
    invoke-direct {v6, v3, v4}, Lcom/nuage/pay/CommandCreator;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 119
    .local v6, "mcommandCreator":Lcom/nuage/pay/CommandCreator;
    invoke-virtual {v6}, Lcom/nuage/pay/CommandCreator;->getKeyword()Ljava/lang/String;

    move-result-object v16

    .line 120
    .local v16, "keyword":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/nuage/pay/CommandCreator;->getShortCode()Ljava/lang/String;

    move-result-object v24

    .line 121
    .local v24, "shorcode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " By clicking Start screen, the application will send the SMS message with the text "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, "mysend":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v4, ".SMS price is RM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const-string v4, " .00(Excl. GST). The service is provided by NuageTimes. Customer Support: +03 86010105, support@centili.com. Service compatibility: All Android devices  Please check your phone specs for service compatibility. This service operates according to the Malaysian code of conduct for SMS services."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 127
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v19, "mtextView":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    sput-object v3, Lcom/example/jifei/assetsutil;->mactivity:Landroid/app/Activity;

    .line 132
    const-string v3, "closebutton.png"

    invoke-static {v3}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 135
    .local v11, "closobt":Landroid/graphics/Bitmap;
    const-string v3, "startgame.png"

    invoke-static {v3}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 136
    .local v25, "startgame":Landroid/graphics/Bitmap;
    new-instance v26, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v26, "startgamebd":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    invoke-direct {v12, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v12, "coinsimageView":Landroid/widget/ImageView;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    mul-int/lit8 v3, v18, 0x4

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v17, 0xe

    div-int/lit8 v4, v4, 0x1e

    .line 138
    invoke-direct {v13, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v13, "coinslayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v3, v18, 0xa

    const/16 v4, 0x14

    const/16 v5, 0xa

    const/4 v8, 0x0

    invoke-virtual {v13, v3, v4, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 141
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const-string v3, "btn_ok.png"

    invoke-static {v3}, Lcom/example/jifei/assetsutil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 146
    .local v21, "okbt":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v22, "okimageView":Landroid/widget/ImageView;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v23, "oklayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    div-int/lit8 v3, v18, 0x4

    div-int/lit8 v4, v17, 0x5

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 151
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v3, Lcom/example/jifei/sp1$2$1;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/example/jifei/sp1$2;->val$popupwindow:Landroid/widget/PopupWindow;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/example/jifei/sp1$2$1;-><init>(Lcom/example/jifei/sp1$2;Landroid/app/Activity;Lcom/nuage/pay/CommandCreator;Landroid/widget/PopupWindow;Landroid/widget/PopupWindow;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v3, v18, 0x4

    div-int/lit8 v3, v3, 0x5

    const/4 v4, -0x2

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v28, "tttlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v3, v18, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0xc

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    const/16 v3, 0xc

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    invoke-direct {v9, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    .local v9, "chahaoimageView":Landroid/widget/ImageView;
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    const/4 v3, -0x2

    .line 199
    const/4 v4, -0x2

    .line 197
    invoke-direct {v10, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v10, "chahaolayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    const/16 v3, 0xa

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    move-object/from16 v0, v27

    invoke-virtual {v0, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v3, Lcom/example/jifei/sp1$2$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/example/jifei/sp1$2$2;-><init>(Lcom/example/jifei/sp1$2;Landroid/widget/PopupWindow;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/example/jifei/sp1$2;->val$macitivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 217
    const/16 v4, 0x33

    const/4 v5, 0x0

    div-int/lit8 v8, v17, 0x6

    .line 216
    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 248
    return-void
.end method
