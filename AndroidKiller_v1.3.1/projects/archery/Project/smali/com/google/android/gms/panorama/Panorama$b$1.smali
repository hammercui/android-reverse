.class Lcom/google/android/gms/panorama/Panorama$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/panorama/Panorama$PanoramaResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/panorama/Panorama$b;->J(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/Panorama$PanoramaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QA:Lcom/google/android/gms/panorama/Panorama$b;

.field final synthetic vb:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/Panorama$b;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/panorama/Panorama$b$1;->QA:Lcom/google/android/gms/panorama/Panorama$b;

    iput-object p2, p0, Lcom/google/android/gms/panorama/Panorama$b$1;->vb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/Panorama$b$1;->vb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getViewerIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
