.class public Lcom/nuage/pay/NuagePay;
.super Ljava/lang/Object;
.source "NuagePay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCommand(Lcom/nuage/pay/CommandCreator;)Z
    .locals 1
    .param p0, "command"    # Lcom/nuage/pay/CommandCreator;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getShortCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const-string v0, "SmsSendOperation: SMS not sent.empty"

    invoke-static {v0}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static startPurchase(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V
    .locals 8
    .param p0, "command"    # Lcom/nuage/pay/CommandCreator;
    .param p1, "handler"    # Lcom/nuage/pay/SendSmsHandler;

    .prologue
    .line 29
    sget-boolean v2, Lcom/nuage/pay/BuildConfig;->DEBUG:Z

    invoke-static {v2}, Lcom/nuage/pay/Logger;->setDebugModeEnabled(Z)V

    .line 30
    new-instance v1, Lcom/nuage/pay/SmsMessageSender;

    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/nuage/pay/SmsSentBroadcastReceiver;

    new-instance v4, Lcom/nuage/pay/NuagePay$1;

    invoke-direct {v4, p1}, Lcom/nuage/pay/NuagePay$1;-><init>(Lcom/nuage/pay/SendSmsHandler;)V

    invoke-direct {v3, v4}, Lcom/nuage/pay/SmsSentBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, v2, v3}, Lcom/nuage/pay/SmsMessageSender;-><init>(Landroid/content/Context;Lcom/nuage/pay/SmsSentBroadcastReceiver;)V

    .line 63
    .local v1, "sender":Lcom/nuage/pay/SmsMessageSender;
    invoke-static {p0}, Lcom/nuage/pay/NuagePay;->checkCommand(Lcom/nuage/pay/CommandCreator;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x64

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.permission.SEND_SMS"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/nuage/pay/permissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getShortCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuage/pay/SmsMessageSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "send sms error : does not have permission"

    invoke-static {v2}, Lcom/nuage/pay/Logger;->d(Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/nuage/pay/SendSmsHandler;->messageSent(I)V

    goto :goto_0
.end method

.method public static startPurchaseWithDialog(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V
    .locals 5
    .param p0, "command"    # Lcom/nuage/pay/CommandCreator;
    .param p1, "handler"    # Lcom/nuage/pay/SendSmsHandler;

    .prologue
    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "Are you sure you want to cost RM %s ?"

    .line 87
    .local v1, "tips":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nuage/pay/CommandCreator;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    const-string v2, "Ok"

    new-instance v3, Lcom/nuage/pay/NuagePay$2;

    invoke-direct {v3, p0, p1}, Lcom/nuage/pay/NuagePay$2;-><init>(Lcom/nuage/pay/CommandCreator;Lcom/nuage/pay/SendSmsHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    const-string v2, "Cancel"

    new-instance v3, Lcom/nuage/pay/NuagePay$3;

    invoke-direct {v3}, Lcom/nuage/pay/NuagePay$3;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v2, Lcom/nuage/pay/NuagePay$4;

    invoke-direct {v2, p1}, Lcom/nuage/pay/NuagePay$4;-><init>(Lcom/nuage/pay/SendSmsHandler;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    return-void
.end method
