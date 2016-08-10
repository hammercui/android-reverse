.class public final Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
    .param p2, "x1"    # Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->Yk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "googleTransactionId is required"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    const/16 v3, 0x8

    if-gt v0, v3, :cond_1

    :goto_1
    const-string v0, "status is an unrecognized value"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setDetailedReason(Ljava/lang/String;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .locals 1
    .param p1, "detailedReason"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->Zk:Ljava/lang/String;

    return-object p0
.end method

.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .locals 1
    .param p1, "googleTransactionId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->Yk:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;
    .locals 1
    .param p1, "status"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$Builder;->Zl:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    iput p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->status:I

    return-object p0
.end method
