.class public final Lcom/google/android/gms/monkey/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/monkey/AdRequest$1;,
        Lcom/google/android/gms/monkey/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# instance fields
.field private final kA:Lcom/google/android/gms/internal/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aj;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/monkey/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/monkey/AdRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/monkey/AdRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-static {p1}, Lcom/google/android/gms/monkey/AdRequest$Builder;->a(Lcom/google/android/gms/monkey/AdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/aj$a;)V

    iput-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/monkey/AdRequest$Builder;Lcom/google/android/gms/monkey/AdRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/monkey/AdRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/monkey/AdRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/monkey/AdRequest;-><init>(Lcom/google/android/gms/monkey/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method N()Lcom/google/android/gms/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    return-object v0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getGender()I

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/monkey/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/AdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
