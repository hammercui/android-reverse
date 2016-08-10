.class final Lcom/nuage/pay/NuagePay$2;
.super Ljava/lang/Object;
.source "NuagePay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuage/pay/NuagePay;->startPurchaseWithDialog(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$command:Lcom/nuage/pay/CommandCreator;

.field final synthetic val$handler:Lcom/nuage/pay/SendSmsHandler;


# direct methods
.method constructor <init>(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nuage/pay/NuagePay$2;->val$command:Lcom/nuage/pay/CommandCreator;

    iput-object p2, p0, Lcom/nuage/pay/NuagePay$2;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$2;->val$command:Lcom/nuage/pay/CommandCreator;

    iget-object v1, p0, Lcom/nuage/pay/NuagePay$2;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-static {v0, v1}, Lcom/nuage/pay/NuagePay;->startPurchase(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
