.class Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/archery/mediation/customevent/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/archery/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final l:Lcom/google/archery/mediation/MediationInterstitialListener;

.field private final p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

.field final synthetic q:Lcom/google/archery/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/archery/mediation/customevent/CustomEventAdapter;Lcom/google/archery/mediation/customevent/CustomEventAdapter;Lcom/google/archery/mediation/MediationInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    iput-object p3, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->l:Lcom/google/archery/mediation/MediationInterstitialListener;

    return-void
.end method


# virtual methods
.method public onDismissScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->l:Lcom/google/archery/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onFailedToReceiveAd()V
    .locals 3

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->l:Lcom/google/archery/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    sget-object v2, Lcom/google/archery/AdRequest$ErrorCode;->NO_FILL:Lcom/google/archery/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/archery/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/archery/mediation/MediationInterstitialAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onLeaveApplication()V
    .locals 2

    const-string v0, "Custom event adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->l:Lcom/google/archery/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->l:Lcom/google/archery/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public onReceivedAd()V
    .locals 2

    const-string v0, "Custom event adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->l:Lcom/google/archery/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;->q:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/archery/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
