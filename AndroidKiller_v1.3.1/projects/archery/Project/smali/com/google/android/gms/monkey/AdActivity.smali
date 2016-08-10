.class public final Lcom/google/android/gms/monkey/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"


# instance fields
.field private kz:Lcom/google/android/gms/internal/bw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/bv;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-nez v0, :cond_0

    const-string v0, "Could not create ad overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bw;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onCreate to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onDestroy to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onPause to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onRestart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onRestart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onResume to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bw;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onSaveInstanceState to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onStart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdActivity;->kz:Lcom/google/android/gms/internal/bw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bw;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onStop to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/AdActivity;->finish()V

    goto :goto_0
.end method
