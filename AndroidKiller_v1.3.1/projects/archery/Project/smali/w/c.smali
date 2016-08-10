.class final Lw/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lw/a;


# direct methods
.method private constructor <init>(Lw/a;)V
    .locals 1

    iput-object p1, p0, Lw/c;->b:Lw/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lw/c;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lw/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lw/c;-><init>(Lw/a;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lw/c;->a:I

    iget-object v2, p0, Lw/c;->b:Lw/a;

    invoke-static {v2}, Lw/a;->a(Lw/a;)V

    :try_start_0
    iget-object v2, p0, Lw/c;->b:Lw/a;

    invoke-static {v2}, Lw/a;->b(Lw/a;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lw/c;->b:Lw/a;

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lw/a;->a(Lw/a;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lw/c;->b:Lw/a;

    iget v1, p0, Lw/c;->a:I

    invoke-static {v0, v1}, Lw/a;->b(Lw/a;I)Z

    move-result v1

    :goto_1
    iget-object v0, p0, Lw/c;->b:Lw/a;

    iget v2, p0, Lw/c;->a:I

    invoke-static {v0, v2}, Lw/a;->c(Lw/a;I)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "LoadDexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkNeedDecDexFile: crash = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    sget v0, Lw/x;->d:I

    invoke-static {v0}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lw/c;->a([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lw/c;->b:Lw/a;

    iget v1, p0, Lw/c;->a:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lw/a;->a(Lw/a;IZ)V

    return-void
.end method
