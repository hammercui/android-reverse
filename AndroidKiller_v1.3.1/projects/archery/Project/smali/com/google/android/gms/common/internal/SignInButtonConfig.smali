.class public Lcom/google/android/gms/common/internal/SignInButtonConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/SignInButtonConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzafT:[Lcom/google/android/gms/common/api/Scope;

.field private final zzamu:I

.field private final zzamv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "buttonSize"    # I
    .param p3, "colorScheme"    # I
    .param p4, "scopes"    # [Lcom/google/android/gms/common/api/Scope;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zzamu:I

    iput p3, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zzamv:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method public constructor <init>(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 1
    .param p1, "buttonSize"    # I
    .param p2, "colorScheme"    # I
    .param p3, "scopes"    # [Lcom/google/android/gms/common/api/Scope;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzaa;->zza(Lcom/google/android/gms/common/internal/SignInButtonConfig;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zzamu:I

    return v0
.end method

.method public zzrc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zzamv:I

    return v0
.end method

.method public zzrd()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method
