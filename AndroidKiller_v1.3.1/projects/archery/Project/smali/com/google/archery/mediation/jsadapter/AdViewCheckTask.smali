.class public final Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/archery/mediation/jsadapter/AdViewCheckTask$a;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I


# instance fields
.field private final r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

.field private final s:Landroid/os/Handler;

.field private final t:J

.field private u:J


# direct methods
.method public constructor <init>(Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;JJ)V
    .locals 2
    .param p1, "adapter"    # Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;
    .param p2, "checkIntervalInMillis"    # J
    .param p4, "numIterations"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    iput-wide p2, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->t:J

    iput-wide p4, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->u:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->u:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->u:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;)Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->u:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->t:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->s:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v0}, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->shouldStopAdCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask$a;

    iget-object v1, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v1}, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->getWebViewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v2}, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->getWebViewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->r:Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v3}, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask$a;-><init>(Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;IILandroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->s:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->t:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
