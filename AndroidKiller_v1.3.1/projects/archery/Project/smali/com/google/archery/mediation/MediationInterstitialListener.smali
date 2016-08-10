.class public interface abstract Lcom/google/archery/mediation/MediationInterstitialListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onDismissScreen(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/archery/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onFailedToReceiveAd(Lcom/google/archery/mediation/MediationInterstitialAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/archery/mediation/MediationInterstitialAdapter",
            "<**>;",
            "Lcom/google/archery/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLeaveApplication(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/archery/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onPresentScreen(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/archery/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract onReceivedAd(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/archery/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation
.end method
