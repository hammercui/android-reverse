.class final Lw/g;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lw/f;


# direct methods
.method constructor <init>(Lw/f;)V
    .locals 0

    iput-object p1, p0, Lw/g;->a:Lw/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lw/g;->a:Lw/f;

    invoke-static {v0, p1}, Lw/f;->a(Lw/f;Landroid/os/Message;)V

    return-void
.end method
