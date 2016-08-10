.class Lcom/example/jifei/sp2$3;
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

.field private final synthetic val$mscreenheight:I

.field private final synthetic val$spopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp2$3;->val$spopupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/example/jifei/sp2$3;->val$mactivity:Landroid/app/Activity;

    iput p3, p0, Lcom/example/jifei/sp2$3;->val$mscreenheight:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/example/jifei/sp2$3;->val$spopupWindow:Landroid/widget/PopupWindow;

    .line 80
    iget-object v1, p0, Lcom/example/jifei/sp2$3;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    .line 81
    const/4 v3, 0x0

    iget v4, p0, Lcom/example/jifei/sp2$3;->val$mscreenheight:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    .line 79
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 83
    return-void
.end method
