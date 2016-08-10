.class final Lcom/unity3d/player/x$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
.method constructor <init>(Lcom/unity3d/player/x;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/x$3;->a:Lcom/unity3d/player/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/x$3;->a:Lcom/unity3d/player/x;

    iget-object v1, p0, Lcom/unity3d/player/x$3;->a:Lcom/unity3d/player/x;

    invoke-virtual {v1}, Lcom/unity3d/player/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/x;->a(Lcom/unity3d/player/x;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
