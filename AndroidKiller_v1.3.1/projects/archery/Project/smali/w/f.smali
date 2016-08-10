.class public final Lw/f;
.super Ljava/lang/Thread;


# static fields
.field private static A:Ljava/lang/String;

.field private static C:I

.field private static D:Ljava/util/concurrent/Executor;

.field private static F:Landroid/os/Handler;

.field private static G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static H:J

.field private static I:Ljava/lang/String;

.field public static a:Ljava/util/Random;

.field private static b:Lw/f;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private B:Lw/n;

.field private E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lw/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Lw/f;

    invoke-direct {v0}, Lw/f;-><init>()V

    sput-object v0, Lw/f;->b:Lw/f;

    sput-object v2, Lw/f;->c:Landroid/content/Context;

    const-string v0, "mbv"

    sput-object v0, Lw/f;->d:Ljava/lang/String;

    const-string v0, "purpose"

    sput-object v0, Lw/f;->e:Ljava/lang/String;

    const-string v0, "MsgParamName"

    sput-object v0, Lw/f;->f:Ljava/lang/String;

    const-string v0, "MsgParamValue"

    sput-object v0, Lw/f;->g:Ljava/lang/String;

    sput-boolean v1, Lw/f;->h:Z

    sput-boolean v1, Lw/f;->i:Z

    const-string v0, ""

    sput-object v0, Lw/f;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->x:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->y:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lw/f;->z:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lw/f;->A:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lw/f;->C:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lw/f;->D:Ljava/util/concurrent/Executor;

    sput-object v2, Lw/f;->F:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lw/f;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lw/f;->a:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lw/f;->H:J

    const-string v0, ""

    sput-object v0, Lw/f;->I:Ljava/lang/String;

    invoke-static {}, Lw/m;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "55555555"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "00000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lw/f;->h:Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v3, Lw/f;->i:Z

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw/f;->B:Lw/n;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw/f;->E:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lw/f;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static a()Lw/f;
    .locals 1

    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(I)Lw/f;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lw/f;->a(II)Lw/f;

    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(II)Lw/f;
    .locals 5

    sget-object v0, Lw/f;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    const/16 v1, 0x58

    new-instance v2, Lw/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lw/l;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lw/f;->a(Landroid/os/Message;)V

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Lw/f;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lw/f;->a(II)Lw/f;

    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lw/f;
    .locals 4

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lw/f;->e:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lw/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lw/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lw/f;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(ZI)Lw/f;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lw/f;->a(II)Lw/f;

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(ZIILjava/lang/String;)Lw/f;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lw/f;->a(II)Lw/f;

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lw/f;->H:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lw/f;->H:J

    invoke-static {p0}, Lw/f;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lw/f;->e:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lw/f;Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v0, "DataReportKit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlerList size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lw/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/i;

    invoke-virtual {v0}, Lw/i;->a()Lw/i;

    goto :goto_1

    :sswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lw/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lw/f;->x()Lw/i;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lw/l;

    invoke-static {v0}, Lw/l;->b(Lw/l;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_2
    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lw/f;->b()V

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lw/l;->c(Lw/l;)I

    move-result v2

    invoke-static {v0}, Lw/l;->a(Lw/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lw/i;->a(II)V

    goto :goto_2

    :pswitch_1
    invoke-static {v0}, Lw/l;->c(Lw/l;)I

    move-result v2

    invoke-static {v0}, Lw/l;->a(Lw/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lw/i;->b(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v0}, Lw/l;->c(Lw/l;)I

    move-result v2

    invoke-static {v0}, Lw/l;->a(Lw/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lw/i;->a(ILjava/lang/String;)V

    goto :goto_2

    :sswitch_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lw/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lw/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lw/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lw/f;->x()Lw/i;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lw/i;->a(Ljava/lang/String;Ljava/lang/String;)Lw/i;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x58 -> :sswitch_1
        0x63 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lw/f;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic b(Z)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lw/f;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "http://hkg02-inf-dev00.hkg02.baidu.com:8888/cgi-bin-py/ad_sdk.cgi"

    :goto_0
    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ty=uu&enc=2&bt=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "http://sync.mobojoy.baidu.com/cgi-bin-py/ad_sdk.cgi"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ty=act&enc=2&bt=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(ILjava/lang/String;)Lw/f;
    .locals 4

    sget-object v0, Lw/f;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    const/16 v1, 0x58

    new-instance v2, Lw/l;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lw/l;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lw/f;->a(Landroid/os/Message;)V

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method public static b()V
    .locals 4

    const/16 v3, 0x42

    sget v0, Lw/f;->C:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    const-string v1, "report_gap"

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Lw/d;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lw/f;->C:I

    :cond_0
    const-string v0, "DataReportKit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report grap = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lw/f;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    sget-object v1, Lw/f;->F:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lw/f;->C:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DataReportKit"

    const-string v1, "enter report offline data"

    invoke-static {v0, v1}, Lw/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lw/f;->D:Ljava/util/concurrent/Executor;

    new-instance v1, Lw/h;

    invoke-direct {v1, p0}, Lw/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lw/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lw/f;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lw/f;->d:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static c(ILjava/lang/String;)Lw/f;
    .locals 1

    invoke-static {p0, p1}, Lw/f;->b(ILjava/lang/String;)Lw/f;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lw/f;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static d(ILjava/lang/String;)Lw/f;
    .locals 4

    sget-object v0, Lw/f;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    const/16 v1, 0x58

    new-instance v2, Lw/l;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lw/l;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lw/f;->a(Landroid/os/Message;)V

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static e(ILjava/lang/String;)Lw/f;
    .locals 4

    sget-object v0, Lw/f;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lw/f;->F:Landroid/os/Handler;

    const/16 v1, 0x58

    new-instance v2, Lw/l;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lw/l;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lw/f;->a(Landroid/os/Message;)V

    :cond_0
    sget-object v0, Lw/f;->b:Lw/f;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u()Landroid/content/Context;
    .locals 1

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/f;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lw/f;->D:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private x()Lw/i;
    .locals 4

    const-string v1, "generic"

    const-string v0, "DataReportKit"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handler count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/i;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/i;

    goto :goto_0

    :cond_1
    new-instance v0, Lw/i;

    invoke-direct {v0, v1}, Lw/i;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lw/f;->B:Lw/n;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw/f;->B:Lw/n;

    invoke-interface {v2, v0}, Lw/n;->a(Lw/i;)Lw/i;

    const-string v2, "SDKName"

    sget-object v3, Lw/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lw/i;->a(Ljava/lang/String;Ljava/lang/String;)Lw/i;

    :cond_2
    iget-object v2, p0, Lw/f;->E:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized y()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    const-string v0, "zhujun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waitThreadStart : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lw/n;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DataReportKit"

    const-string v1, "enter init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    const-string v0, "DataReportKit"

    const-string v1, "==do init=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lw/f;->c:Landroid/content/Context;

    sput-object p4, Lw/f;->d:Ljava/lang/String;

    iput-object p3, p0, Lw/f;->B:Lw/n;

    sget-object v0, Lw/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p2, Lw/f;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Lw/f;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lw/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-object v1, Lw/f;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "MbvLicense"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lw/f;->k:Ljava/lang/String;

    :cond_2
    sget-object v1, Lw/f;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "MbvProduction"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lw/f;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "MbvAppKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->l:Ljava/lang/String;

    :cond_3
    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->m:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v0, Lw/f;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lw/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lw/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->o:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_1
    :try_start_4
    sget-object v0, Lw/f;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->p:Ljava/lang/String;

    :cond_5
    sget-object v0, Lw/f;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->q:Ljava/lang/String;

    :cond_6
    sget-object v0, Lw/f;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lw/f;->r:Ljava/lang/String;

    :cond_7
    sget-object v0, Lw/f;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lw/f;->s:Ljava/lang/String;

    :cond_8
    sget-object v0, Lw/f;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lw/f;->t:Ljava/lang/String;

    :cond_9
    sget-object v0, Lw/f;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lw/f;->u:Ljava/lang/String;

    :cond_a
    sget-object v0, Lw/f;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->v:Ljava/lang/String;

    :cond_b
    sget-object v0, Lw/f;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lw/m;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->w:Ljava/lang/String;

    :cond_c
    sget-object v0, Lw/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->x:Ljava/lang/String;

    :cond_d
    sget-object v0, Lw/f;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->y:Ljava/lang/String;

    :cond_e
    sget-object v0, Lw/f;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lw/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lw/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw/f;->z:Ljava/lang/String;

    :cond_f
    invoke-virtual {p0}, Lw/f;->start()V

    invoke-direct {p0}, Lw/f;->y()V

    invoke-static {}, Lw/i;->b()I

    move-result v0

    const-string v1, "uu"

    invoke-static {v0, v1}, Lw/f;->b(ILjava/lang/String;)Lw/f;

    invoke-static {}, Lw/f;->b()V

    invoke-static {p1}, Lw/f;->b(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "unknown"

    sput-object v0, Lw/f;->o:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lw/g;

    invoke-direct {v0, p0}, Lw/g;-><init>(Lw/f;)V

    sput-object v0, Lw/f;->F:Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
