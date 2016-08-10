.class final Lcom/unity3d/player/a/e$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/a/e$a;-><init>(Lcom/unity3d/player/a/e;Lcom/unity3d/player/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/unity3d/player/a/e$a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a/e$a$1;->a:Lcom/unity3d/player/a/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a/e$a$1;->a:Lcom/unity3d/player/a/e$a;

    iget-object v0, v0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    iget-object v1, p0, Lcom/unity3d/player/a/e$a$1;->a:Lcom/unity3d/player/a/e$a;

    invoke-static {v1}, Lcom/unity3d/player/a/e$a;->a(Lcom/unity3d/player/a/e$a;)Lcom/unity3d/player/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/a/e;->a(Lcom/unity3d/player/a/e;Lcom/unity3d/player/a/g;)V

    iget-object v0, p0, Lcom/unity3d/player/a/e$a$1;->a:Lcom/unity3d/player/a/e$a;

    iget-object v0, v0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    iget-object v1, p0, Lcom/unity3d/player/a/e$a$1;->a:Lcom/unity3d/player/a/e$a;

    invoke-static {v1}, Lcom/unity3d/player/a/e$a;->a(Lcom/unity3d/player/a/e$a;)Lcom/unity3d/player/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/a/e;->b(Lcom/unity3d/player/a/e;Lcom/unity3d/player/a/g;)V

    return-void
.end method
