.class public final Lcom/google/android/gms/internal/bo;
.super Lcom/google/android/gms/internal/bw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bo$b;,
        Lcom/google/android/gms/internal/bo$a;
    }
.end annotation


# instance fields
.field private final nd:Landroid/app/Activity;

.field private ne:Lcom/google/android/gms/internal/bq;

.field private nf:Lcom/google/android/gms/internal/bs;

.field private ng:Lcom/google/android/gms/internal/dd;

.field private nh:Lcom/google/android/gms/internal/bo$b;

.field private ni:Lcom/google/android/gms/internal/bt;

.field private nj:Landroid/widget/FrameLayout;

.field private nk:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private nl:Z

.field private nm:Z

.field private nn:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw$a;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    return-void
.end method

.method private static a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bq;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/db;->pX:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bq;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/bq;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private as()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nm:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->aY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nh:Lcom/google/android/gms/internal/bo$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dd;->n(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nh:Lcom/google/android/gms/internal/bo$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/bo$b;->nq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->nh:Lcom/google/android/gms/internal/bo$b;

    iget v2, v2, Lcom/google/android/gms/internal/bo$b;->index:I

    iget-object v3, p0, Lcom/google/android/gms/internal/bo;->nh:Lcom/google/android/gms/internal/bo$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/bo$b;->np:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    invoke-interface {v0}, Lcom/google/android/gms/internal/br;->S()V

    goto :goto_0
.end method

.method private h(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bo$a;
        }
    .end annotation

    const/16 v1, 0x400

    const/4 v11, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget v1, v1, Lcom/google/android/gms/internal/bq;->orientation:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bo;->setRequestedOrientation(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/cw;->a(Landroid/view/Window;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/de;->bi()Z

    move-result v3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dd;->Q()Lcom/google/android/gms/internal/ab;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v5, v5, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v8, v0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v9, v0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/ap;Lcom/google/android/gms/internal/bu;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bo$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bo$1;-><init>(Lcom/google/android/gms/internal/bo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/de$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dd;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/bo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0, v1, v11, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->aZ()V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/bo;->f(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v6, v0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v7, v0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/dd;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/bo$a;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bo$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dd;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bo;->nk:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public ap()Lcom/google/android/gms/internal/bs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    return-object v0
.end method

.method public aq()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bo;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bo;->nj:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nk:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nk:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bo;->nk:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    return-void
.end method

.method public ar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ni:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bo;->f(Z)V

    return-void
.end method

.method public b(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/bo;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bs;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public c(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bs;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/bo;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->bb()Lcom/google/android/gms/internal/de;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/de;->o(Z)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/bt;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/bt;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bo;->ni:Lcom/google/android/gms/internal/bt;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ni:Lcom/google/android/gms/internal/bt;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bq;->nx:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bt;->g(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->ni:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ni:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ni:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->g(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nl:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/bo$a;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bo$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/bo$a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    invoke-interface {v0}, Lcom/google/android/gms/internal/br;->T()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->nA:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    invoke-interface {v0}, Lcom/google/android/gms/internal/u;->O()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->nA:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/bo$a;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bo$a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bo;->h(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/bo$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bo$b;-><init>(Lcom/google/android/gms/internal/dd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->nh:Lcom/google/android/gms/internal/bo$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bo;->h(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bo;->h(Z)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nl:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget-object v2, v2, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bl;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bu;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/bo$a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bs;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;->as()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nf:Lcom/google/android/gms/internal/bs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bs;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bo;->aq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nh:Lcom/google/android/gms/internal/bo$b;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/webkit/WebView;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;->as()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ne:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->nA:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nl:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ng:Lcom/google/android/gms/internal/dd;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->nl:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outBundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bo;->nl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;->as()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->nd:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
