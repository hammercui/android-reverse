.class Lcom/google/android/gms/analytics/s$c;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic rL:Lcom/google/android/gms/analytics/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/s$c;->rL:Lcom/google/android/gms/analytics/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/s$c;-><init>(Lcom/google/android/gms/analytics/s;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/s$c;->rL:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->b(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/s$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/s$a;->rN:Lcom/google/android/gms/analytics/s$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/s$c;->rL:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->c(Lcom/google/android/gms/analytics/s;)V

    :cond_0
    return-void
.end method
