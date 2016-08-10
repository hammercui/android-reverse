.class final Lcom/unity3d/player/a/e$a;
.super Lcom/unity3d/player/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/a/e;

.field private final b:Lcom/unity3d/player/a/g;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a/e;Lcom/unity3d/player/a/g;)V
    .locals 4

    iput-object p1, p0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    invoke-direct {p0}, Lcom/unity3d/player/a/c$a;-><init>()V

    iput-object p2, p0, Lcom/unity3d/player/a/e$a;->b:Lcom/unity3d/player/a/g;

    new-instance v0, Lcom/unity3d/player/a/e$a$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a/e$a$1;-><init>(Lcom/unity3d/player/a/e$a;)V

    iput-object v0, p0, Lcom/unity3d/player/a/e$a;->c:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    invoke-static {v0}, Lcom/unity3d/player/a/e;->c(Lcom/unity3d/player/a/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a/e$a;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/a/e$a;)Lcom/unity3d/player/a/g;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a/e$a;->b:Lcom/unity3d/player/a/g;

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/a/e$a;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    invoke-static {v0}, Lcom/unity3d/player/a/e;->c(Lcom/unity3d/player/a/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a/e$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    invoke-static {v0}, Lcom/unity3d/player/a/e;->c(Lcom/unity3d/player/a/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/a/e$a$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/unity3d/player/a/e$a$2;-><init>(Lcom/unity3d/player/a/e$a;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
