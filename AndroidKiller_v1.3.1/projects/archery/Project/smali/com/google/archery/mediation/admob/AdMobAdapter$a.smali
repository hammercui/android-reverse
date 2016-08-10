.class final Lcom/google/archery/mediation/admob/AdMobAdapter$a;
.super Lcom/google/android/gms/monkey/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/archery/mediation/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final j:Lcom/google/archery/mediation/admob/AdMobAdapter;

.field private final k:Lcom/google/archery/mediation/MediationBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/archery/mediation/admob/AdMobAdapter;Lcom/google/archery/mediation/MediationBannerListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/monkey/AdListener;-><init>()V

    iput-object p1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    invoke-static {p1}, Lcom/google/android/gms/internal/bk;->h(I)Lcom/google/archery/AdRequest$ErrorCode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/archery/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/archery/mediation/MediationBannerAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onClick(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter$a;->j:Lcom/google/archery/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method
