.class final Lcom/unity3d/player/UnityPlayer$17;
.super Lcom/unity3d/player/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;IZZLandroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p6, p0, Lcom/unity3d/player/UnityPlayer$17;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/unity3d/player/z;-><init>(Landroid/content/Context;IZZ)V

    return-void
.end method


# virtual methods
.method protected final init(IZIIII)V
    .locals 7

    const/16 v1, 0x10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default_aa"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;I)I

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->canUse32bitDisplayBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "32bit_display"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x20

    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "24bit_depth"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v4, 0x18

    :goto_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-super/range {v0 .. v6}, Lcom/unity3d/player/z;->init(IZIIII)V

    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$17;->a:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/unity3d/player/z;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
