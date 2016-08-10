.class final Lcom/unity3d/player/a/e$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/a/e$a;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/unity3d/player/a/e$a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a/e$a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    iput p2, p0, Lcom/unity3d/player/a/e$a$2;->a:I

    iput-object p3, p0, Lcom/unity3d/player/a/e$a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/player/a/e$a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    iget-object v0, v0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    invoke-static {v0}, Lcom/unity3d/player/a/e;->a(Lcom/unity3d/player/a/e;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    invoke-static {v1}, Lcom/unity3d/player/a/e$a;->a(Lcom/unity3d/player/a/e$a;)Lcom/unity3d/player/a/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    invoke-static {v0}, Lcom/unity3d/player/a/e$a;->b(Lcom/unity3d/player/a/e$a;)V

    iget-object v0, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    invoke-static {v0}, Lcom/unity3d/player/a/e$a;->a(Lcom/unity3d/player/a/e$a;)Lcom/unity3d/player/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    iget-object v1, v1, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    invoke-static {v1}, Lcom/unity3d/player/a/e;->b(Lcom/unity3d/player/a/e;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/unity3d/player/a/e$a$2;->a:I

    iget-object v3, p0, Lcom/unity3d/player/a/e$a$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/player/a/e$a$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unity3d/player/a/g;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    iget-object v0, v0, Lcom/unity3d/player/a/e$a;->a:Lcom/unity3d/player/a/e;

    iget-object v1, p0, Lcom/unity3d/player/a/e$a$2;->d:Lcom/unity3d/player/a/e$a;

    invoke-static {v1}, Lcom/unity3d/player/a/e$a;->a(Lcom/unity3d/player/a/e$a;)Lcom/unity3d/player/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/a/e;->b(Lcom/unity3d/player/a/e;Lcom/unity3d/player/a/g;)V

    :cond_0
    return-void
.end method
