.class final Lcom/google/android/gms/panorama/Panorama$2;
.super Lcom/google/android/gms/panorama/Panorama$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/panorama/Panorama;->loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qz:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/panorama/Panorama$2;->Qz:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/gms/panorama/Panorama$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ih;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/Panorama$2;->a(Lcom/google/android/gms/internal/ih;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ih;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/panorama/Panorama$2;->Qz:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ih;->a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V

    return-void
.end method
