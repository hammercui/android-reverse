.class public Lcom/example/jifei/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/example/jifei/MainActivity;->requestWindowFeature(I)Z

    .line 16
    invoke-virtual {p0}, Lcom/example/jifei/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 18
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/jifei/MainActivity;->setContentView(I)V

    .line 20
    invoke-static {p0}, Lcom/example/jifei/sp1;->mysp1(Landroid/app/Activity;)V

    .line 21
    invoke-static {p0}, Lcom/example/jifei/sp2;->mysp2(Landroid/app/Activity;)V

    .line 23
    return-void
.end method
