.class Lcom/google/android/gms/analytics/Tracker$a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Tracker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic uI:Lcom/google/android/gms/analytics/Tracker$a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/Tracker$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$a$a;->uI:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/Tracker$a;Lcom/google/android/gms/analytics/Tracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/Tracker$a$a;-><init>(Lcom/google/android/gms/analytics/Tracker$a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$a$a;->uI:Lcom/google/android/gms/analytics/Tracker$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/Tracker$a;->a(Lcom/google/android/gms/analytics/Tracker$a;Z)Z

    return-void
.end method
