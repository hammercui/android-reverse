.class final Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/archery/mediation/customevent/CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/archery/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final k:Lcom/google/archery/mediation/MediationBannerListener;

.field private final p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/archery/mediation/customevent/CustomEventAdapter;Lcom/google/archery/mediation/MediationBannerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    iput-object p2, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onClick(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onDismissScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onFailedToReceiveAd()V
    .locals 3

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    sget-object v2, Lcom/google/archery/AdRequest$ErrorCode;->NO_FILL:Lcom/google/archery/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/archery/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/archery/mediation/MediationBannerAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onLeaveApplication()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    const-string v0, "Custom event adapter called onFailedToReceiveAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public onReceivedAd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "Custom event adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-static {v0, p1}, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->a(Lcom/google/archery/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;->p:Lcom/google/archery/mediation/customevent/CustomEventAdapter;

    invoke-interface {v0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    return-void
.end method
