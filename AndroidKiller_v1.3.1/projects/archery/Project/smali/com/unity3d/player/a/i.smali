.class public final Lcom/unity3d/player/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Lcom/unity3d/player/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/a/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->e:J

    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/a/j;

    invoke-direct {v1, v0, p2}, Lcom/unity3d/player/a/j;-><init>(Landroid/content/SharedPreferences;Lcom/unity3d/player/a/h;)V

    iput-object v1, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "lastResponse"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a/i;->f:I

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "validityTimestamp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->a:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "retryUntil"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->b:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "maxRetries"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->c:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "retryCount"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->d:J

    return-void
.end method

.method private a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/unity3d/player/a/i;->d:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->a:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->b:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string p1, "0"

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->c:J

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string p1, "0"

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(ILcom/unity3d/player/a/k;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/a/i;->a(J)V

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p2, Lcom/unity3d/player/a/k;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/player/a/i;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput p1, p0, Lcom/unity3d/player/a/i;->f:I

    const-string v0, "VT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unity3d/player/a/i;->a(Ljava/lang/String;)V

    const-string v0, "GT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unity3d/player/a/i;->b(Ljava/lang/String;)V

    const-string v0, "GR"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unity3d/player/a/i;->c(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/player/a/i;->e:J

    iput p1, p0, Lcom/unity3d/player/a/i;->f:I

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a/i;->g:Lcom/unity3d/player/a/j;

    invoke-virtual {v0}, Lcom/unity3d/player/a/j;->a()V

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/unity3d/player/a/i;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/a/i;->a(J)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/unity3d/player/a/i;->a(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/unity3d/player/a/i;->b(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/unity3d/player/a/i;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/unity3d/player/a/i;->f:I

    if-ne v4, v0, :cond_1

    iget-wide v4, p0, Lcom/unity3d/player/a/i;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lcom/unity3d/player/a/i;->f:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    iget-wide v4, p0, Lcom/unity3d/player/a/i;->e:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    iget-wide v4, p0, Lcom/unity3d/player/a/i;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/unity3d/player/a/i;->d:J

    iget-wide v4, p0, Lcom/unity3d/player/a/i;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
