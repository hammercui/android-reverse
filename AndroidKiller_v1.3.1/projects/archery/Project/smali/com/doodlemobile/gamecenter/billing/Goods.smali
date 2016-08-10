.class public abstract Lcom/doodlemobile/gamecenter/billing/Goods;
.super Ljava/lang/Object;
.source "Goods.java"


# instance fields
.field protected sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Goods;->sku:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Goods;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onPurchaseSuccess()V
.end method
