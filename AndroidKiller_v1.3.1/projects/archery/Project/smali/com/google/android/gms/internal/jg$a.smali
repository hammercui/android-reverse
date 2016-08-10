.class final Lcom/google/android/gms/internal/jg$a;
.super Lcom/google/android/gms/internal/jf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final Bq:I

.field final synthetic Zz:Lcom/google/android/gms/internal/jg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jg;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jf$a;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v0}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v1}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onFullWalletLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x198

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v0}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v1}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onMaskedWalletLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x198

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(IZLandroid/os/Bundle;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v1}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onPreAuthorizationDetermined"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "Bundle should not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v0}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v0, "WalletClientImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Wallet Objects confirmation UI will not be shown connection result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    const/16 v2, 0x19d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg$a;->Zz:Lcom/google/android/gms/internal/jg;

    invoke-static {v1}, Lcom/google/android/gms/internal/jg;->b(Lcom/google/android/gms/internal/jg;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/jg$a;->Bq:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onWalletObjectsCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
