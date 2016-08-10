.class public final Lcom/google/android/gms/internal/cd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final kN:Lcom/google/android/gms/internal/db;

.field public final kQ:Lcom/google/android/gms/internal/ab;

.field public final ob:Landroid/os/Bundle;

.field public final oc:Lcom/google/android/gms/internal/z;

.field public final od:Landroid/content/pm/PackageInfo;

.field public final of:Ljava/lang/String;

.field public final og:Ljava/lang/String;

.field public final oh:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cd$a;->ob:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/cd$a;->oc:Lcom/google/android/gms/internal/z;

    iput-object p3, p0, Lcom/google/android/gms/internal/cd$a;->kQ:Lcom/google/android/gms/internal/ab;

    iput-object p4, p0, Lcom/google/android/gms/internal/cd$a;->adUnitId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/cd$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/internal/cd$a;->od:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/cd$a;->of:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/cd$a;->og:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/cd$a;->kN:Lcom/google/android/gms/internal/db;

    iput-object p10, p0, Lcom/google/android/gms/internal/cd$a;->oh:Landroid/os/Bundle;

    return-void
.end method
