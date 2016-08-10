.class final Lcom/nuage/pay/SmsSentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsSentBroadcastReceiver.java"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "smsSentHandler"    # Landroid/os/Handler;

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/nuage/pay/SmsSentBroadcastReceiver;->handler:Landroid/os/Handler;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    iget-object v1, p0, Lcom/nuage/pay/SmsSentBroadcastReceiver;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 18
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/nuage/pay/SmsSentBroadcastReceiver;->getResultCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 20
    iget-object v1, p0, Lcom/nuage/pay/SmsSentBroadcastReceiver;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    return-void
.end method
