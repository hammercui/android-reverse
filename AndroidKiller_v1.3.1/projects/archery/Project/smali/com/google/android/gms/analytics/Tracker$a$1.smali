.class Lcom/google/android/gms/analytics/Tracker$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/Tracker$a;-><init>(Lcom/google/android/gms/analytics/Tracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uH:Lcom/google/android/gms/analytics/Tracker;

.field final synthetic uI:Lcom/google/android/gms/analytics/Tracker$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/Tracker$a;Lcom/google/android/gms/analytics/Tracker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$a$1;->uI:Lcom/google/android/gms/analytics/Tracker$a;

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker$a$1;->uH:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
