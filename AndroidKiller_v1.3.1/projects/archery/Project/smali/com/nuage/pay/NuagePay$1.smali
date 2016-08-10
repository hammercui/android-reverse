.class final Lcom/nuage/pay/NuagePay$1;
.super Landroid/os/Handler;
.source "NuagePay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuage/pay/NuagePay;->startPurchase(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V
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
    .line 30
    iput-object p1, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    .line 33
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :pswitch_0
    const-string v0, "SmsSendOperation: SMS not sent."

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    .line 61
    :goto_0
    return-void

    .line 36
    :pswitch_1
    const-string v0, "SmsSendOperation: SMS sent successfully."

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    goto :goto_0

    .line 40
    :pswitch_2
    const-string v0, "SmsManager.RESULT_ERROR_GENERIC_FAILURE"

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "SmsManager.RESULT_ERROR_NO_SERVICE"

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "SmsManager.RESULT_ERROR_NULL_PDU"

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "SmsManager.RESULT_ERROR_RADIO_OFF"

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/nuage/pay/NuagePay$1;->val$handler:Lcom/nuage/pay/SendSmsHandler;

    invoke-interface {v0, v1}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
