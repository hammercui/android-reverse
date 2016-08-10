.class Lcom/example/jifei/sp2$2;
.super Ljava/lang/Object;
.source "sp2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp2;->mysp2(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mactivity:Landroid/app/Activity;

.field private final synthetic val$mscreenwidth:I

.field private final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp2$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/example/jifei/sp2$2;->val$mactivity:Landroid/app/Activity;

    iput p3, p0, Lcom/example/jifei/sp2$2;->val$mscreenwidth:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/example/jifei/sp2$2;->val$popupWindow:Landroid/widget/PopupWindow;

    .line 68
    iget-object v1, p0, Lcom/example/jifei/sp2$2;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    .line 69
    iget v3, p0, Lcom/example/jifei/sp2$2;->val$mscreenwidth:I

    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 71
    return-void
.end method
