.class public final Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aj$a;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;


# instance fields
.field private final d:Ljava/util/Date;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lA:I

.field private final lB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lt:Ljava/lang/String;

.field private final lu:I

.field private final lv:Landroid/location/Location;

.field private final lw:Z

.field private final lx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/monkey/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/monkey/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final ly:Ljava/lang/String;

.field private final lz:Lcom/google/android/gms/monkey/search/SearchAdRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/aj;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/aj$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/aj$a;Lcom/google/android/gms/monkey/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/aj$a;Lcom/google/android/gms/monkey/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->a(Lcom/google/android/gms/internal/aj$a;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->d:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->b(Lcom/google/android/gms/internal/aj$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->lt:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->c(Lcom/google/android/gms/internal/aj$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aj;->lu:I

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->d(Lcom/google/android/gms/internal/aj$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->f:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->e(Lcom/google/android/gms/internal/aj$a;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->lv:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->f(Lcom/google/android/gms/internal/aj$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aj;->lw:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->g(Lcom/google/android/gms/internal/aj$a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->lx:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->h(Lcom/google/android/gms/internal/aj$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->ly:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/aj;->lz:Lcom/google/android/gms/monkey/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->i(Lcom/google/android/gms/internal/aj$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aj;->lA:I

    invoke-static {p1}, Lcom/google/android/gms/internal/aj$a;->j(Lcom/google/android/gms/internal/aj$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->lB:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public aj()Lcom/google/android/gms/monkey/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lz:Lcom/google/android/gms/monkey/search/SearchAdRequest;

    return-object v0
.end method

.method public ak()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/monkey/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/monkey/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lx:Ljava/util/Map;

    return-object v0
.end method

.method public al()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aj;->lA:I

    return v0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->d:Ljava/util/Date;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lt:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aj;->lu:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->f:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lv:Landroid/location/Location;

    return-object v0
.end method

.method public getManualImpressionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aj;->lw:Z

    return v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/monkey/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/monkey/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "networkExtrasClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/monkey/mediation/NetworkExtras;

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->ly:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lB:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/cz;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
