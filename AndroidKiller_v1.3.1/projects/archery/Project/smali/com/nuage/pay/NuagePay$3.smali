.class final Lcom/nuage/pay/NuagePay$3;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 99
    return-void
.end method
