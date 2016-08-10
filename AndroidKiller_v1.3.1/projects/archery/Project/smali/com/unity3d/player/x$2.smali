.class final Lcom/unity3d/player/x$2;
.super Landroid/widget/EditText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/x;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/unity3d/player/x;


# direct methods
.method constructor <init>(Lcom/unity3d/player/x;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/x$2;->a:Lcom/unity3d/player/x;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/x$2;->a:Lcom/unity3d/player/x;

    iget-object v1, p0, Lcom/unity3d/player/x$2;->a:Lcom/unity3d/player/x;

    invoke-virtual {v1}, Lcom/unity3d/player/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/x;->a(Lcom/unity3d/player/x;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/x$2;->a:Lcom/unity3d/player/x;

    invoke-static {v0}, Lcom/unity3d/player/x;->a(Lcom/unity3d/player/x;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/x$2;->a:Lcom/unity3d/player/x;

    iget-object v1, p0, Lcom/unity3d/player/x$2;->a:Lcom/unity3d/player/x;

    invoke-virtual {v1}, Lcom/unity3d/player/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/x;->a(Lcom/unity3d/player/x;Ljava/lang/String;)V

    goto :goto_0
.end method
