.class Lcom/example/jifei/sp2$5;
.super Ljava/lang/Object;
.source "sp2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp2;->mysp3(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$i:I

.field private final synthetic val$mactivity:Landroid/app/Activity;

.field private final synthetic val$mcommandCreator:Lcom/nuage/pay/CommandCreator;

.field private final synthetic val$sp3popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/nuage/pay/CommandCreator;Landroid/widget/PopupWindow;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp2$5;->val$mactivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/example/jifei/sp2$5;->val$mcommandCreator:Lcom/nuage/pay/CommandCreator;

    iput-object p3, p0, Lcom/example/jifei/sp2$5;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    iput p4, p0, Lcom/example/jifei/sp2$5;->val$i:I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/example/jifei/sp2$5;->val$mactivity:Landroid/app/Activity;

    const-string v1, "5"

    invoke-static {v0, v1}, Lcom/nuage/pay/AFUtils;->eventCheckout(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/example/jifei/sp2$5;->val$mcommandCreator:Lcom/nuage/pay/CommandCreator;

    new-instance v1, Lcom/example/jifei/sp2$5$1;

    iget-object v2, p0, Lcom/example/jifei/sp2$5;->val$mactivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/example/jifei/sp2$5;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/example/jifei/sp2$5;->val$i:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/example/jifei/sp2$5$1;-><init>(Lcom/example/jifei/sp2$5;Landroid/app/Activity;Landroid/widget/PopupWindow;I)V

    invoke-static {v0, v1}, Lcom/nuage/pay/NuagePay;->startPurchase(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V

    .line 232
    return-void
.end method
