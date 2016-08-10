.class public final Lcom/google/android/gms/monkey/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/monkey/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final kB:Lcom/google/android/gms/internal/aj$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aj$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/monkey/AdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/monkey/mediation/NetworkExtras;)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "networkExtras"    # Lcom/google/android/gms/monkey/mediation/NetworkExtras;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Lcom/google/android/gms/monkey/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/monkey/AdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/monkey/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/monkey/AdRequest;-><init>(Lcom/google/android/gms/monkey/AdRequest$Builder;Lcom/google/android/gms/monkey/AdRequest$1;)V

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "birthday"    # Ljava/util/Date;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public setGender(I)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "gender"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->d(I)V

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/monkey/AdRequest$Builder;
    .locals 1
    .param p1, "tagForChildDirectedTreatment"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->e(Z)V

    return-object p0
.end method
