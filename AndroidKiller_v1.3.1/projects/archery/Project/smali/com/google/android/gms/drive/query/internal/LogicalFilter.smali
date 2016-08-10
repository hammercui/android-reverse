.class public Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/Filter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/LogicalFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;"
        }
    .end annotation
.end field

.field final EO:Lcom/google/android/gms/drive/query/internal/Operator;

.field final EY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "operator"    # Lcom/google/android/gms/drive/query/internal/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "filterHolders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/drive/query/internal/FilterHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EO:Lcom/google/android/gms/drive/query/internal/Operator;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EY:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V
    .locals 5
    .param p1, "operator"    # Lcom/google/android/gms/drive/query/internal/Operator;
    .param p2, "filter"    # Lcom/google/android/gms/drive/query/Filter;
    .param p3, "additionalFilters"    # [Lcom/google/android/gms/drive/query/Filter;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->wj:I

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EO:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EY:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EY:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EN:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EN:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EY:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v4, v2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EN:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V
    .locals 4
    .param p1, "operator"    # Lcom/google/android/gms/drive/query/internal/Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/Operator;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "filters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/gms/drive/query/Filter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->wj:I

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EO:Lcom/google/android/gms/drive/query/internal/Operator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EN:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EY:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/query/Filter;

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EN:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->EY:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v3, v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/f;->a(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Landroid/os/Parcel;I)V

    return-void
.end method
