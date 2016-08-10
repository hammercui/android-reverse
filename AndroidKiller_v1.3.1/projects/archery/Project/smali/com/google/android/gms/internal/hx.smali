.class public final Lcom/google/android/gms/internal/hx;
.super Lcom/google/android/gms/internal/hm;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hx$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hy;


# instance fields
.field private final Od:Landroid/os/Bundle;

.field private final Oe:Lcom/google/android/gms/internal/hz;

.field private final Of:Lcom/google/android/gms/maps/model/LatLng;

.field private final Og:F

.field private final Oh:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final Oi:Ljava/lang/String;

.field private final Oj:Landroid/net/Uri;

.field private final Ok:Z

.field private final Ol:F

.field private final Om:I

.field private final On:J

.field private final Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            ">;"
        }
    .end annotation
.end field

.field private final Op:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Oq:Ljava/util/TimeZone;

.field private Or:Ljava/util/Locale;

.field private Os:Lcom/google/android/gms/internal/ic;

.field private final uS:Ljava/lang/String;

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hx;->CREATOR:Lcom/google/android/gms/internal/hy;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/hz;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFIJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/hm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hx;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hx;->Oo:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/hx;->Od:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/hx;->Oe:Lcom/google/android/gms/internal/hz;

    iput-object p6, p0, Lcom/google/android/gms/internal/hx;->Of:Lcom/google/android/gms/maps/model/LatLng;

    iput p7, p0, Lcom/google/android/gms/internal/hx;->Og:F

    iput-object p8, p0, Lcom/google/android/gms/internal/hx;->Oh:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p9, p0, Lcom/google/android/gms/internal/hx;->Oi:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/hx;->Oj:Landroid/net/Uri;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hx;->Ok:Z

    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/gms/internal/hx;->Ol:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/hx;->Om:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gms/internal/hx;->On:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ht;->aI(Ljava/lang/String;)Lcom/google/android/gms/internal/ht;

    move-result-object v5

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hx;->Op:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Oi:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hx;->Oq:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/hx;->Or:Ljava/util/Locale;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/hx;->Os:Lcom/google/android/gms/internal/ic;

    return-void
.end method

.method private aJ(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Os:Lcom/google/android/gms/internal/ic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Os:Lcom/google/android/gms/internal/ic;

    new-instance v1, Lcom/google/android/gms/internal/hx$a$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/hx$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/hx$a$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hx;->CREATOR:Lcom/google/android/gms/internal/hy;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/hx;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/hx;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Or:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/internal/hx;->Or:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ep;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/hx;->On:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/hx;->On:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public gA()Landroid/net/Uri;
    .locals 1

    const-string v0, "getWebsiteUri"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Oj:Landroid/net/Uri;

    return-object v0
.end method

.method public gB()Z
    .locals 1

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hx;->Ok:Z

    return v0
.end method

.method public gC()I
    .locals 1

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hx;->Om:I

    return v0
.end method

.method public gD()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/hx;->On:J

    return-wide v0
.end method

.method public gE()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Od:Landroid/os/Bundle;

    return-object v0
.end method

.method public gF()Lcom/google/android/gms/internal/hz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Oe:Lcom/google/android/gms/internal/hz;

    return-object v0
.end method

.method public gG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Oi:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hx;->Ol:F

    return v0
.end method

.method public gw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ht;",
            ">;"
        }
    .end annotation

    const-string v0, "getTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Oo:Ljava/util/List;

    return-object v0
.end method

.method public gx()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Of:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public gy()F
    .locals 1

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/hx;->Og:F

    return v0
.end method

.method public gz()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hx;->aJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hx;->Oh:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Or:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/hx;->On:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->uS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "localization"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Oe:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Or:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Of:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "levelNumber"

    iget v2, p0, Lcom/google/android/gms/internal/hx;->Og:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Oh:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "timeZone"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Oi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/hx;->Oj:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hx;->Ok:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/internal/hx;->Om:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/internal/hx;->On:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/hx;->CREATOR:Lcom/google/android/gms/internal/hy;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/hx;Landroid/os/Parcel;I)V

    return-void
.end method
