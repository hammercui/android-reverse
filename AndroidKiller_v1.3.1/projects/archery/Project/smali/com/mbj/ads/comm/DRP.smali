.class public Lcom/mbj/ads/comm/DRP;
.super Ljava/lang/Object;


# static fields
.field public static final REPORT_GAP_TIME:Ljava/lang/String; = "report_gap"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCount(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->a(II)Lw/f;

    return-void
.end method

.method public static addCountEx(I)V
    .locals 0

    invoke-static {p0}, Lw/f;->a(I)Lw/f;

    return-void
.end method

.method public static addCountEx(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->a(ILjava/lang/String;)Lw/f;

    return-void
.end method

.method public static addCountExIf(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->a(ZI)Lw/f;

    return-void
.end method

.method public static addCountIf(ZIILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lw/f;->a(ZIILjava/lang/String;)Lw/f;

    return-void
.end method

.method public static addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->a(Ljava/lang/String;Ljava/lang/String;)Lw/f;

    return-void
.end method

.method public static addRepeat(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->d(ILjava/lang/String;)Lw/f;

    return-void
.end method

.method public static addRepeatEx(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->e(ILjava/lang/String;)Lw/f;

    return-void
.end method

.method public static addState(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->b(ILjava/lang/String;)Lw/f;

    return-void
.end method

.method public static addStateEx(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->c(ILjava/lang/String;)Lw/f;

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lw/n;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lw/f;->a()Lw/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lw/f;->a(Landroid/content/Context;Ljava/lang/String;Lw/n;Ljava/lang/String;)V

    return-void
.end method

.method public static onNetworkChanged(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lw/f;->a()Lw/f;

    invoke-static {p0}, Lw/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static report()V
    .locals 0

    invoke-static {}, Lw/f;->b()V

    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    invoke-static {p0}, Lw/f;->a(Z)V

    return-void
.end method
