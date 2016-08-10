.class Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask$1;
.super Lcom/google/android/gms/monkey/AdListener;
.source "DFeatureGameMutiCountryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask$1;->this$0:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/monkey/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/android/gms/monkey/AdListener;->onAdLoaded()V

    .line 152
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    sget-boolean v0, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    return-void

    .line 153
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
