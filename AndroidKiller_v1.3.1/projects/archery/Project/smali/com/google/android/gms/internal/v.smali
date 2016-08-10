.class public final Lcom/google/android/gms/internal/v;
.super Lcom/google/android/gms/internal/ag$a;

# interfaces
.implements Lcom/google/android/gms/internal/ap;
.implements Lcom/google/android/gms/internal/az;
.implements Lcom/google/android/gms/internal/br;
.implements Lcom/google/android/gms/internal/bu;
.implements Lcom/google/android/gms/internal/by$a;
.implements Lcom/google/android/gms/internal/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/v$a;
    }
.end annotation


# instance fields
.field private final kH:Lcom/google/android/gms/internal/bf;

.field private final kI:Lcom/google/android/gms/internal/v$a;

.field private final kJ:Lcom/google/android/gms/internal/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/db;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ag$a;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/v$a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/v$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/v;->kH:Lcom/google/android/gms/internal/bf;

    new-instance v0, Lcom/google/android/gms/internal/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/w;-><init>(Lcom/google/android/gms/internal/v;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/cz;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") to get test ads on this device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/cv;->i(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/af;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private aa()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ab()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ac()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ad()V
    .locals 2

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/internal/af;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ae()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    const-string v3, "Missing internet permission in AndroidManifest.xml."

    const-string v4, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/cz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/cv;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    const-string v3, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/cz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    :cond_4
    return v0
.end method

.method private af()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co;->aK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mt:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v2, v2, Lcom/google/android/gms/internal/cn;->mt:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->mt:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v5, v5, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v5, v5, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/internal/ay;->mt:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/cn;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method private ag()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co;->aJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mu:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v2, v2, Lcom/google/android/gms/internal/cn;->mu:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->mu:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v4, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v4, v4, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-object v5, v4, Lcom/google/android/gms/internal/ay;->mu:Ljava/util/List;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/cn;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ax;->mp:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v4, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v4, v4, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;

    iget-object v5, v4, Lcom/google/android/gms/internal/ax;->mp:Ljava/util/List;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/cn;Ljava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private b(Lcom/google/android/gms/internal/cn;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/cn;->ok:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->mN:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->getView()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v4, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4, v3}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/dd;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/dd;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v4, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mN:Lcom/google/android/gms/internal/bg;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mN:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->destroy()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    move v0, v2

    :goto_3
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Could not add mediation view to view hierarchy."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    iget-object v3, p1, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/ab;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget-object v3, p1, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    iget v3, v3, Lcom/google/android/gms/internal/ab;->widthPixels:I

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget-object v3, p1, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    iget v3, v3, Lcom/google/android/gms/internal/ab;->heightPixels:I

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "Could not destroy previous mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private c(Lcom/google/android/gms/internal/z;)Lcom/google/android/gms/internal/cd$a;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/ViewSwitcher;->getLocationOnScreen([I)V

    aget v3, v0, v2

    aget v4, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v7, v7, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v8, v8, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v8}, Landroid/widget/ViewSwitcher;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v9, v9, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9}, Landroid/widget/ViewSwitcher;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int v9, v3, v7

    if-lez v9, :cond_0

    add-int v9, v4, v8

    if-lez v9, :cond_0

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v3, v9, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v4, v0, :cond_0

    move v0, v1

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "x"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "y"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "visible"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/cp;->aP()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    new-instance v2, Lcom/google/android/gms/internal/co;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    invoke-direct {v2, v7, v3}, Lcom/google/android/gms/internal/co;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/co;->f(Lcom/google/android/gms/internal/z;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-static {v0, v7, v2}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/v$a;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v10

    new-instance v0, Lcom/google/android/gms/internal/cd$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v2, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v2, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/cp;->pu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v9, v2, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/cd$a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;Landroid/os/Bundle;)V

    return-object v0

    :catch_0
    move-exception v3

    move-object v6, v0

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public O()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->af()V

    return-void
.end method

.method public P()Lcom/google/android/gms/dynamic/b;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lcom/google/android/gms/internal/ab;
    .locals 1

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    return-object v0
.end method

.method public R()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ab()V

    return-void
.end method

.method public S()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ag()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->aa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co;->aL()V

    return-void
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ac()V

    return-void
.end method

.method public U()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->O()V

    return-void
.end method

.method public V()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->S()V

    return-void
.end method

.method public W()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->R()V

    return-void
.end method

.method public X()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->T()V

    return-void
.end method

.method public Y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v1, v1, Lcom/google/android/gms/internal/cn;->mO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ad()V

    return-void
.end method

.method public Z()V
    .locals 3

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->om:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v2, v2, Lcom/google/android/gms/internal/cn;->om:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/ab;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object p1, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/ab;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget v1, p1, Lcom/google/android/gms/internal/ab;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget v1, p1, Lcom/google/android/gms/internal/ab;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->requestLayout()V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/af;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object p1, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ai;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object p1, v0, Lcom/google/android/gms/internal/v$a;->kT:Lcom/google/android/gms/internal/ai;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/cn;)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object v7, v0, Lcom/google/android/gms/internal/v$a;->kP:Lcom/google/android/gms/internal/ct;

    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    if-eq v0, v6, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/v$a;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->oc:Lcom/google/android/gms/internal/z;

    iget-object v0, v0, Lcom/google/android/gms/internal/z;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->oc:Lcom/google/android/gms/internal/z;

    iget-object v0, v0, Lcom/google/android/gms/internal/z;->extras:Landroid/os/Bundle;

    const-string v1, "_noRefresh"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/webkit/WebView;)V

    :cond_2
    :goto_2
    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    if-ne v0, v5, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->mv:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v2, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-object v5, v2, Lcom/google/android/gms/internal/ay;->mv:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/bd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/cn;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    if-eq v0, v6, :cond_8

    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->a(I)V

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/google/android/gms/internal/cn;->mx:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/internal/cn;->oc:Lcom/google/android/gms/internal/z;

    iget-wide v2, p1, Lcom/google/android/gms/internal/cn;->mx:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/internal/z;J)V

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ay;->mx:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/internal/cn;->oc:Lcom/google/android/gms/internal/z;

    iget-object v2, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ay;->mx:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/internal/z;J)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p1, Lcom/google/android/gms/internal/cn;->ok:Z

    if-nez v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/cn;->errorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/internal/cn;->oc:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->d(Lcom/google/android/gms/internal/z;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/internal/cn;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/v;->a(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mP:Lcom/google/android/gms/internal/ba;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mP:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/az;)V

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->mP:Lcom/google/android/gms/internal/ba;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->mP:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/az;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object p1, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    iput-object v1, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    iget-wide v1, p1, Lcom/google/android/gms/internal/cn;->ph:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/co;->g(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    iget-wide v1, p1, Lcom/google/android/gms/internal/cn;->pi:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/co;->h(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ab;->lo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/co;->k(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kS:Lcom/google/android/gms/internal/co;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/cn;->ok:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/co;->l(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v0, :cond_d

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/v;->b(Z)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kU:Lcom/google/android/gms/internal/cr;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    new-instance v1, Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cr;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/v$a;->kU:Lcom/google/android/gms/internal/cr;

    :cond_e
    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget v0, v0, Lcom/google/android/gms/internal/ay;->my:I

    iget-object v1, p1, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    iget v4, v1, Lcom/google/android/gms/internal/ay;->mz:I

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kU:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/cr;->a(II)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ad()V

    goto/16 :goto_0

    :cond_f
    move v0, v4

    goto :goto_3
.end method

.method public a(Lcom/google/android/gms/internal/z;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kP:Lcom/google/android/gms/internal/ct;

    if-eqz v0, :cond_1

    const-string v0, "An ad request is already in progress. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_2

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->cancel()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v;->c(Lcom/google/android/gms/internal/z;)Lcom/google/android/gms/internal/cd$a;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v3, Lcom/google/android/gms/internal/v$a;->kM:Lcom/google/android/gms/internal/l;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v5, v3, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/dd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/ap;Lcom/google/android/gms/internal/bu;Z)V

    move-object v3, v6

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v2, v1, Lcom/google/android/gms/internal/v$a;->kM:Lcom/google/android/gms/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/internal/v;->kH:Lcom/google/android/gms/internal/bf;

    move-object v1, v10

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/by;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cd$a;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/by$a;)Lcom/google/android/gms/internal/ct;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/v$a;->kP:Lcom/google/android/gms/internal/ct;

    move v2, v9

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/dd;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/dd;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;

    move-result-object v3

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/ap;Lcom/google/android/gms/internal/bu;Z)V

    move-object v3, v0

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v4, v3, Lcom/google/android/gms/internal/v$a;->kM:Lcom/google/android/gms/internal/l;

    iget-object v3, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v5, v3, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-object v1, v1, Lcom/google/android/gms/internal/ab;->lp:[Lcom/google/android/gms/internal/ab;

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/v;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method public b(Lcom/google/android/gms/internal/z;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/cv;->aS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/z;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad is not visible. Not refreshing ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/w;->d(Lcom/google/android/gms/internal/z;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object v1, v0, Lcom/google/android/gms/internal/v$a;->kO:Lcom/google/android/gms/internal/af;

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iput-object v1, v0, Lcom/google/android/gms/internal/v$a;->kT:Lcom/google/android/gms/internal/ai;

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kJ:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/v;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->destroy()V

    :cond_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kP:Lcom/google/android/gms/internal/ct;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kT:Lcom/google/android/gms/internal/ai;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kT:Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ai;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->b(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 7

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-nez v0, :cond_0

    const-string v0, "Cannot call showInterstitial on a banner ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-nez v0, :cond_1

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->be()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dd;->n(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/cn;->ok:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->mN:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;->ag()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/bq;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v4, v1, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget v5, v1, Lcom/google/android/gms/internal/cn;->orientation:I

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v6, v1, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dd;ILcom/google/android/gms/internal/db;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/bo;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bq;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->ac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/v$a;->kR:Lcom/google/android/gms/internal/cn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kP:Lcom/google/android/gms/internal/ct;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->kI:Lcom/google/android/gms/internal/v$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/v$a;->kP:Lcom/google/android/gms/internal/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ct;->cancel()V

    :cond_1
    return-void
.end method
