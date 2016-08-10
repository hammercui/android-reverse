.class Lcom/example/jifei/sp1$1;
.super Ljava/lang/Object;
.source "sp1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp1;->mysp1(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$macitivity:Landroid/app/Activity;

.field private final synthetic val$popupwindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp1$1;->val$macitivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/example/jifei/sp1$1;->val$popupwindow:Landroid/widget/PopupWindow;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v2, p0, Lcom/example/jifei/sp1$1;->val$macitivity:Landroid/app/Activity;

    .line 89
    const-string v3, "mysp"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "msharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "start"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "start":I
    if-nez v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/example/jifei/sp1$1;->val$popupwindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/example/jifei/sp1$1;->val$macitivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x33

    .line 92
    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 95
    :cond_0
    return-void
.end method
