.class public Lcom/google/android/gms/wallet/WalletClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final Zx:Lcom/google/android/gms/internal/jg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;ILcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "environment"    # I
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "theme"    # I
    .param p5, "connectionCallbacks"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p6, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/jg;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "environment"    # I
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "connectionCallbacks"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p5, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/wallet/WalletClient;-><init>(Landroid/app/Activity;ILjava/lang/String;ILcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public changeMaskedWallet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "googleTransactionId"    # Ljava/lang/String;
    .param p2, "merchantTransactionId"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jg;->changeMaskedWallet(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public checkForPreAuthorization(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->checkForPreAuthorization(I)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadFullWallet(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/wallet/FullWalletRequest;
    .param p2, "requestCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->loadFullWallet(Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    return-void
.end method

.method public loadMaskedWallet(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .param p2, "requestCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->loadMaskedWallet(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    return-void
.end method

.method public notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Zx:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
