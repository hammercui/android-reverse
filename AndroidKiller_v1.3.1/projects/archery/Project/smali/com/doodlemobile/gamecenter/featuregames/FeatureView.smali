.class public Lcom/doodlemobile/gamecenter/featuregames/FeatureView;
.super Landroid/widget/RelativeLayout;
.source "FeatureView.java"


# static fields
.field public static final BOTTOM_VERTICAL:I = 0xc

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_VERTICAL:I = 0xf

.field public static final LEFT_HORIZONTAL:I = 0x9

.field public static final RIGHT_HORIZONTAL:I = 0xb

.field public static final TOP_VERTICAL:I = 0xa

.field public static index:I

.field private static mFeaturePkg:Ljava/lang/String;


# instance fields
.field private final TYPE_ADMOB:Ljava/lang/String;

.field private final TYPE_DEFAULT:Ljava/lang/String;

.field private final TYPE_ICON:Ljava/lang/String;

.field private dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

.field public featureGameIndex:I

.field private lastRefreshedTime:J

.field private mContext:Landroid/content/Context;

.field private mFeatureCompanyText:Landroid/widget/TextView;

.field private mFeatureGameText:Landroid/widget/TextView;

.field private mFeatureImage:Landroid/widget/ImageView;

.field private mFeatureIntent:Landroid/content/Intent;

.field private mFeatureLayout:Landroid/widget/RelativeLayout;

.field public mFeatureLocation:Ljava/lang/String;

.field private mFeatureRefreshtime:I

.field private mFeatureType:Ljava/lang/String;

.field private mFeatureXmlName:Ljava/lang/String;

.field private mRefreshWhat:I

.field refreshHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeaturePkg:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->index:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v0, "icon"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->TYPE_ICON:Ljava/lang/String;

    .line 37
    const-string v0, "default"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->TYPE_DEFAULT:Ljava/lang/String;

    .line 38
    const-string v0, "admob"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->TYPE_ADMOB:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLocation:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureXmlName:Ljava/lang/String;

    .line 46
    iput v3, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureRefreshtime:I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->lastRefreshedTime:J

    .line 48
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    .line 50
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 51
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 52
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    .line 53
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    .line 54
    const/16 v0, 0x2711

    iput v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    .line 55
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    .line 247
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$1;-><init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "dm.featureView.location"

    const-string v1, "featureLocation"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLocation:Ljava/lang/String;

    .line 64
    const-string v0, "dm.featureView.location"

    const-string v1, "type"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    .line 65
    const-string v0, "dm.featureView.location"

    const-string v1, "xmlname"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureXmlName:Ljava/lang/String;

    .line 66
    const-string v0, "dm.featureView.location"

    const-string v1, "refreshtime"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureRefreshtime:I

    .line 68
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureXmlName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getView(Ljava/lang/String;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->gInstance:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    invoke-virtual {v0, p0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->registerFeatureView(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    .line 71
    sget v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->index:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->index:I

    iput v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    .line 72
    const-string v0, "once"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calling reset"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->lastRefreshedTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureRefreshtime:I

    return v0
.end method

.method static synthetic access$2(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;J)V
    .locals 0

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->lastRefreshedTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshNewGame()V

    return-void
.end method

.method static synthetic access$6(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->sendRefreshMSG()V

    return-void
.end method

.method static synthetic access$7(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$8(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    return-object v0
.end method

.method static synthetic access$9(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFeaturePkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeaturePkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeaturePkg:Ljava/lang/String;

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private getView(Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 12
    .param p1, "layout"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 148
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "layout"

    invoke-virtual {v8, p1, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 151
    .local v5, "layoutId":I
    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    .line 153
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "feature_gamename"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 154
    .local v3, "fgtId":I
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "feature_companyname"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, "fctId":I
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "featurebar"

    const-string v10, "id"

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, "featurebarId":I
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    :cond_0
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 159
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, "mFeatureBackground":Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "mFeatureBackground":Landroid/widget/RelativeLayout;
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 163
    .restart local v6    # "mFeatureBackground":Landroid/widget/RelativeLayout;
    new-instance v8, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;

    invoke-direct {v8, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$2;-><init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .end local v6    # "mFeatureBackground":Landroid/widget/RelativeLayout;
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "feature_image"

    const-string v11, "id"

    invoke-virtual {v9, v10, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    .line 239
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    .line 243
    .end local v1    # "fctId":I
    .end local v2    # "featurebarId":I
    .end local v3    # "fgtId":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layoutId":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 179
    .restart local v1    # "fctId":I
    .restart local v2    # "featurebarId":I
    .restart local v3    # "fgtId":I
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "layoutId":I
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    const-string v9, "icon"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$3;

    invoke-direct {v9, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$3;-><init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v1    # "fctId":I
    .end local v2    # "featurebarId":I
    .end local v3    # "fgtId":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layoutId":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const/4 v8, 0x0

    goto :goto_1

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fctId":I
    .restart local v2    # "featurebarId":I
    .restart local v3    # "fgtId":I
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "layoutId":I
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    const-string v9, "admob"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 198
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 199
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 201
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$4;

    invoke-direct {v9, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$4;-><init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 218
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 219
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 221
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$5;

    invoke-direct {v9, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView$5;-><init>(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;)Z
    .locals 5
    .param p1, "dg"    # Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    .prologue
    const/4 v1, 0x0

    .line 99
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return v1

    .line 104
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureType:Ljava/lang/String;

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mMarketUri:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&referrer=utm_source%3DFV_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    iget-object v2, p1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mMarketUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/utils/DGlobalParams;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeaturePkg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshNewGame()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->gInstance:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    invoke-virtual {v0, p0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->getNextUninstalledGame(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    .line 313
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->sendRefreshMSG()V

    .line 320
    return-void
.end method

.method private sendRefreshMSG()V
    .locals 6

    .prologue
    .line 323
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    iget v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureRefreshtime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    return-void
.end method


# virtual methods
.method public forceRefreshNewGame()V
    .locals 4

    .prologue
    .line 348
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->gInstance:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    invoke-virtual {v1, p0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->getNextUninstalledGame(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    move-result-object v1

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    .line 350
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 356
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method public logAppearEvent()V
    .locals 6

    .prologue
    .line 336
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mGameName:Ljava/lang/String;

    const-string v3, "Appear"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLocation:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    iget-object v5, v5, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "doodle"

    const-string v2, "log no network in logAppearEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 140
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->sendRefreshMSG()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 126
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->reset()V

    .line 130
    const-string v0, "onWindowVisibleChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "here:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->sendRefreshMSG()V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mRefreshWhat:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->gInstance:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    invoke-virtual {v1, p0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->getNextUninstalledGame(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    move-result-object v1

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    .line 83
    const-string v1, "reset"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->mFeatureLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
