.class public Lcom/mbj/ads/component/AdsActivity;
.super Landroid/app/Activity;


# instance fields
.field protected mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onBackPressed()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->a()V

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->j()Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onRestart()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onResume()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onStart()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onStop()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsActivity;->mRemoteActivity:Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsActivityInterface;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
