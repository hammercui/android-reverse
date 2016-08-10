.class final Lcom/unity3d/player/UnityPlayer$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:F

.field private synthetic d:F

.field private synthetic e:F

.field private synthetic f:F

.field private synthetic g:F

.field private synthetic h:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;IIFFFFF)V
    .locals 1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$5;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/UnityPlayer$5;->b:I

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$5;->c:F

    iput p5, p0, Lcom/unity3d/player/UnityPlayer$5;->d:F

    iput p6, p0, Lcom/unity3d/player/UnityPlayer$5;->e:F

    iput p7, p0, Lcom/unity3d/player/UnityPlayer$5;->f:F

    iput p8, p0, Lcom/unity3d/player/UnityPlayer$5;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$5;->c:F

    iget v6, p0, Lcom/unity3d/player/UnityPlayer$5;->d:F

    invoke-static {v4, v2, v5, v6, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;IFFI)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->o(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$5;->c:F

    iget v4, p0, Lcom/unity3d/player/UnityPlayer$5;->d:F

    sub-float v4, v0, v4

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->c:F

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$5;->e:F

    sub-float v5, v0, v5

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->d:F

    iget v6, p0, Lcom/unity3d/player/UnityPlayer$5;->f:F

    sub-float/2addr v0, v6

    neg-float v6, v0

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:I

    const/16 v7, 0x8

    if-ne v0, v7, :cond_1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->g:F

    :goto_1
    iget-object v7, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v7, v5, v6, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;FFF)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v2, v4}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;FF)V

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v3}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_0
    :goto_2
    return-void

    :pswitch_1
    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->b:I

    move v2, v1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->b:I

    move v2, v3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/unity3d/player/UnityPlayer$5;->a:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$5;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;Z)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
