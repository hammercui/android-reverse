.class public Lcom/google/android/gms/drive/internal/QueryRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/QueryRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Ef:Lcom/google/android/gms/drive/query/Query;

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ai;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/Query;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "query"    # Lcom/google/android/gms/drive/query/Query;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/QueryRequest;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/QueryRequest;->Ef:Lcom/google/android/gms/drive/query/Query;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Query;)V
    .locals 1
    .param p1, "query"    # Lcom/google/android/gms/drive/query/Query;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(ILcom/google/android/gms/drive/query/Query;)V

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ai;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Landroid/os/Parcel;I)V

    return-void
.end method
