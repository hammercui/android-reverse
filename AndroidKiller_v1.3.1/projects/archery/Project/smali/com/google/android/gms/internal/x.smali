.class public final Lcom/google/android/gms/internal/x;
.super Lcom/google/android/gms/internal/af$a;


# instance fields
.field private final lc:Lcom/google/android/gms/monkey/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/monkey/AdListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/af$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/monkey/AdListener;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/monkey/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/monkey/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/monkey/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/monkey/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/monkey/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdListener;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->lc:Lcom/google/android/gms/monkey/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdListener;->onAdOpened()V

    return-void
.end method
