.class public final Lcom/google/android/gms/internal/ec;
.super Landroid/widget/ImageView;


# instance fields
.field private Bl:Landroid/net/Uri;

.field private Bm:I

.field private Bn:I


# virtual methods
.method public N(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ec;->Bm:I

    return-void
.end method

.method public d(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ec;->Bl:Landroid/net/Uri;

    return-void
.end method

.method public dQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ec;->Bm:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/ec;->Bn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ec;->Bn:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method
