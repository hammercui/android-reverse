.class final Lw/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/io/ByteArrayOutputStream;

.field private synthetic b:[B

.field private synthetic c:Z

.field private synthetic d:Lw/i;


# direct methods
.method constructor <init>(Lw/i;Ljava/io/ByteArrayOutputStream;[BZ)V
    .locals 0

    iput-object p1, p0, Lw/j;->d:Lw/i;

    iput-object p2, p0, Lw/j;->a:Ljava/io/ByteArrayOutputStream;

    iput-object p3, p0, Lw/j;->b:[B

    iput-boolean p4, p0, Lw/j;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lw/j;->d:Lw/i;

    iget-object v1, p0, Lw/j;->a:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lw/j;->b:[B

    iget-boolean v3, p0, Lw/j;->c:Z

    invoke-static {v0, v1, v2, v3}, Lw/i;->a(Lw/i;Ljava/io/ByteArrayOutputStream;[BZ)V

    return-void
.end method
