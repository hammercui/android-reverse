.class final Lcom/nuage/pay/NuagePay$4;
.super Ljava/lang/Object;
.source "NuagePay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuage/pay/NuagePay;->startPurchaseWithDialog(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/nuage/pay/SendSmsHandler;


# direct methods
.method constructor <init>(Lcom/nuage/pay/SendSmsHandler;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nuage/pay/NuagePay$4;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$4;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    .line 105
    return-void
.end method
