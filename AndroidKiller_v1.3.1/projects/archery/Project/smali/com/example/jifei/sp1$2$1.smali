.class Lcom/example/jifei/sp1$2$1;
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

.field private final synthetic val$macitivity:Landroid/app/Activity;

.field private final synthetic val$mcommandCreator:Lcom/nuage/pay/CommandCreator;

.field private final synthetic val$popupwindow:Landroid/widget/PopupWindow;

.field private final synthetic val$sp3popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/example/jifei/sp1$2;Landroid/app/Activity;Lcom/nuage/pay/CommandCreator;Landroid/widget/PopupWindow;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp1$2$1;->this$1:Lcom/example/jifei/sp1$2;

    iput-object p2, p0, Lcom/example/jifei/sp1$2$1;->val$macitivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/example/jifei/sp1$2$1;->val$mcommandCreator:Lcom/nuage/pay/CommandCreator;

    iput-object p4, p0, Lcom/example/jifei/sp1$2$1;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    iput-object p5, p0, Lcom/example/jifei/sp1$2$1;->val$popupwindow:Landroid/widget/PopupWindow;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/example/jifei/sp1$2$1;->val$macitivity:Landroid/app/Activity;

    const-string v1, "6"

    invoke-static {v0, v1}, Lcom/nuage/pay/AFUtils;->eventCheckout(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/example/jifei/sp1$2$1;->val$mcommandCreator:Lcom/nuage/pay/CommandCreator;

    new-instance v1, Lcom/example/jifei/sp1$2$1$1;

    iget-object v2, p0, Lcom/example/jifei/sp1$2$1;->val$macitivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/example/jifei/sp1$2$1;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/example/jifei/sp1$2$1;->val$popupwindow:Landroid/widget/PopupWindow;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/example/jifei/sp1$2$1$1;-><init>(Lcom/example/jifei/sp1$2$1;Landroid/app/Activity;Landroid/widget/PopupWindow;Landroid/widget/PopupWindow;)V

    invoke-static {v0, v1}, Lcom/nuage/pay/NuagePay;->startPurchase(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V

    .line 181
    return-void
.end method
