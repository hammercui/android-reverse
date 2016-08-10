.class public interface abstract Lcom/google/archery/mediation/MediationInterstitialAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/archery/mediation/MediationAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADDITIONA",
        "L_PARAMETERS::Lcom/google/archery/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/archery/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/archery/mediation/MediationAdapter",
        "<TADDITIONA",
        "L_PARAMETERS;",
        "TSERVER_PARAMETERS;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract requestInterstitialAd(Lcom/google/archery/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/archery/mediation/MediationServerParameters;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/archery/mediation/NetworkExtras;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/archery/mediation/MediationInterstitialListener;",
            "Landroid/app/Activity;",
            "TSERVER_PARAMETERS;",
            "Lcom/google/archery/mediation/MediationAdRequest;",
            "TADDITIONA",
            "L_PARAMETERS;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showInterstitial()V
.end method
