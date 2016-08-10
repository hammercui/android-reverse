.class public Lcom/nuage/pay/CommandCreator;
.super Ljava/lang/Object;
.source "CommandCreator.java"


# instance fields
.field private context:Landroid/app/Activity;

.field private keyword:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private shortCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "price"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nuage/pay/CommandCreator;->context:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/nuage/pay/CommandCreator;->price:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/nuage/pay/DeviceUtils;->getSimOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "operatorCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    const-string v1, "502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const-string v1, "50216"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "50210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    :cond_0
    const-string v1, "36247"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->shortCode:Ljava/lang/String;

    .line 53
    :cond_1
    :goto_0
    const-string v1, "9"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    const-string v1, "CENT9 NUT"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    .line 70
    :cond_2
    :goto_1
    return-void

    .line 48
    :cond_3
    const-string v1, "50218"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    const-string v1, "38788"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->shortCode:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_4
    const-string v1, "50212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "23110"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->shortCode:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_5
    const-string v1, "10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 56
    const-string v1, "CENT10 NUT"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_6
    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    const-string v1, "CENT2 NUT"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_7
    const-string v1, "3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 60
    const-string v1, "CENT3 NUT"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_8
    const-string v1, "5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    const-string v1, "CENT5 NUT"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    goto :goto_1

    .line 63
    :cond_9
    const-string v1, "6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string v1, "CENT6 NUT"

    iput-object v1, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuage/pay/CommandCreator;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuage/pay/CommandCreator;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuage/pay/CommandCreator;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuage/pay/CommandCreator;->shortCode:Ljava/lang/String;

    return-object v0
.end method
