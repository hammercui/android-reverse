.class public final Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bp;


# instance fields
.field public final kN:Lcom/google/android/gms/internal/db;

.field public final mZ:Ljava/lang/String;

.field public final nA:I

.field public final nr:Lcom/google/android/gms/internal/bn;

.field public final ns:Lcom/google/android/gms/internal/u;

.field public final nt:Lcom/google/android/gms/internal/br;

.field public final nu:Lcom/google/android/gms/internal/dd;

.field public final nv:Lcom/google/android/gms/internal/ap;

.field public final nw:Ljava/lang/String;

.field public final nx:Z

.field public final ny:Ljava/lang/String;

.field public final nz:Lcom/google/android/gms/internal/bu;

.field public final orientation:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bq;->CREATOR:Lcom/google/android/gms/internal/bp;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/bn;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bq;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/u;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/br;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dd;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    invoke-static {p6}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ap;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/bq;->nx:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bu;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    iput p11, p0, Lcom/google/android/gms/internal/bq;->orientation:I

    iput p12, p0, Lcom/google/android/gms/internal/bq;->nA:I

    iput-object p13, p0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->nx:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->orientation:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nA:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/ap;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dd;ZILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bq;->nx:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    iput p7, p0, Lcom/google/android/gms/internal/bq;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nA:I

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/ap;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dd;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bq;->nx:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    iput p7, p0, Lcom/google/android/gms/internal/bq;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nA:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dd;ILcom/google/android/gms/internal/db;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/bq;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->nx:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    iput p5, p0, Lcom/google/android/gms/internal/bq;->orientation:I

    iput v2, p0, Lcom/google/android/gms/internal/bq;->nA:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/br;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dd;ZILcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nr:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->nw:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/bq;->nx:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->ny:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    iput p6, p0, Lcom/google/android/gms/internal/bq;->orientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nA:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->mZ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->kN:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/internal/bq;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/bq;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/bq;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method at()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ns:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method au()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nt:Lcom/google/android/gms/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method av()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nu:Lcom/google/android/gms/internal/dd;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method aw()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nv:Lcom/google/android/gms/internal/ap;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method ax()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nz:Lcom/google/android/gms/internal/bu;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bq;Landroid/os/Parcel;I)V

    return-void
.end method
