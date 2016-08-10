.class Lcom/doodlemobile/gamecenter/billing/Store$4;
.super Landroid/os/Handler;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/billing/Store;-><init>(Ljava/lang/String;[Lcom/doodlemobile/gamecenter/billing/Goods;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/billing/Store;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/billing/Store;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store$4;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    .line 46
    .local v0, "whichGoods":I
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store$4;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/billing/Store$4;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    # getter for: Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/billing/Store;->access$0(Lcom/doodlemobile/gamecenter/billing/Store;)[Lcom/doodlemobile/gamecenter/billing/Goods;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/billing/Store;->buy(Lcom/doodlemobile/gamecenter/billing/Goods;)V

    .line 47
    return-void
.end method
