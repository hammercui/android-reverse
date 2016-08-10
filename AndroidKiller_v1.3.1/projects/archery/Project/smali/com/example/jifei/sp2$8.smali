.class Lcom/example/jifei/sp2$8;
.super Ljava/lang/Object;
.source "sp2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp2;->sp4(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mactivity:Landroid/app/Activity;

.field private final synthetic val$sp4popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp2$8;->val$mactivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/example/jifei/sp2$8;->val$sp4popupWindow:Landroid/widget/PopupWindow;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/example/jifei/sp2$8;->val$mactivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/example/jifei/sp2;->mysp3(Landroid/app/Activity;I)V

    .line 303
    iget-object v0, p0, Lcom/example/jifei/sp2$8;->val$sp4popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 304
    return-void
.end method
