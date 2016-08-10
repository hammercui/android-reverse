.class Lcom/nuage/pay/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"


# instance fields
.field private context:Landroid/content/Context;

.field private receiver:Lcom/nuage/pay/SmsSentBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuage/pay/SmsSentBroadcastReceiver;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lcom/nuage/pay/SmsSentBroadcastReceiver;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nuage/pay/SmsMessageSender;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/nuage/pay/SmsMessageSender;->receiver:Lcom/nuage/pay/SmsSentBroadcastReceiver;

    .line 17
    return-void
.end method


# virtual methods
.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 21
    const-string v6, "NUAGE_PAYMENT_SMS_SENT"

    .line 23
    .local v6, "SENT":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuage/pay/SmsMessageSender;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 25
    .local v4, "sentPI":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/nuage/pay/SmsMessageSender;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/nuage/pay/SmsMessageSender;->receiver:Lcom/nuage/pay/SmsSentBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    .line 27
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 28
    return-void
.end method

.method public unregistReceiver()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuage/pay/SmsMessageSender;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuage/pay/SmsMessageSender;->receiver:Lcom/nuage/pay/SmsSentBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/nuage/pay/SmsMessageSender;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuage/pay/SmsMessageSender;->receiver:Lcom/nuage/pay/SmsSentBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    :cond_0
    return-void
.end method
