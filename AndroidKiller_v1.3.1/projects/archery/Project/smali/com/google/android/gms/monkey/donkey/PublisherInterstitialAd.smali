.class public final Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final kE:Lcom/google/android/gms/internal/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/monkey/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->getAdListener()Lcom/google/android/gms/monkey/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/monkey/donkey/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->getAppEventListener()Lcom/google/android/gms/monkey/donkey/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/monkey/donkey/PublisherAdRequest;)V
    .locals 2
    .param p1, "publisherAdRequest"    # Lcom/google/android/gms/monkey/donkey/PublisherAdRequest;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/donkey/PublisherAdRequest;->N()Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/aj;)V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/monkey/AdListener;)V
    .locals 1
    .param p1, "adListener"    # Lcom/google/android/gms/monkey/AdListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/al;->setAdListener(Lcom/google/android/gms/monkey/AdListener;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/al;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V
    .locals 1
    .param p1, "appEventListener"    # Lcom/google/android/gms/monkey/donkey/AppEventListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/al;->setAppEventListener(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherInterstitialAd;->kE:Lcom/google/android/gms/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/al;->show()V

    return-void
.end method
