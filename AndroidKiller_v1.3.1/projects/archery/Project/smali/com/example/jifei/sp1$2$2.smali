.class Lcom/example/jifei/sp1$2$2;
.super Ljava/lang/Object;
.source "sp1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/jifei/sp1$2;

.field private final synthetic val$sp3popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/example/jifei/sp1$2;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp1$2$2;->this$1:Lcom/example/jifei/sp1$2;

    iput-object p2, p0, Lcom/example/jifei/sp1$2$2;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/example/jifei/sp1$2$2;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 214
    return-void
.end method
