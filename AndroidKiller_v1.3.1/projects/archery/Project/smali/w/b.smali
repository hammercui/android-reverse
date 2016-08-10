.class final Lw/b;
.super Ljava/lang/Object;

# interfaces
.implements Lw/n;


# direct methods
.method constructor <init>(Lw/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lw/i;)Lw/i;
    .locals 2

    const-string v0, "ApsSDKVersion"

    const-string v1, "47.0.1.5269"

    invoke-virtual {p1, v0, v1}, Lw/i;->a(Ljava/lang/String;Ljava/lang/String;)Lw/i;

    move-result-object v0

    return-object v0
.end method
