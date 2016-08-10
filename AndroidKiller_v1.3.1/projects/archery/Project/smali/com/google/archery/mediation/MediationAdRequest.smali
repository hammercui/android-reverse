.class public final Lcom/google/archery/mediation/MediationAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final d:Ljava/util/Date;

.field private final e:Lcom/google/archery/AdRequest$Gender;

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

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/archery/AdRequest$Gender;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "birthday"    # Ljava/util/Date;
    .param p2, "gender"    # Lcom/google/archery/AdRequest$Gender;
    .param p4, "isTesting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/archery/AdRequest$Gender;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/archery/mediation/MediationAdRequest;->d:Ljava/util/Date;

    iput-object p2, p0, Lcom/google/archery/mediation/MediationAdRequest;->e:Lcom/google/archery/AdRequest$Gender;

    iput-object p3, p0, Lcom/google/archery/mediation/MediationAdRequest;->f:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/archery/mediation/MediationAdRequest;->g:Z

    return-void
.end method


# virtual methods
.method public getAgeInYears()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/MediationAdRequest;->d:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/archery/AdRequest$Gender;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/MediationAdRequest;->e:Lcom/google/archery/AdRequest$Gender;

    return-object v0
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

    iget-object v0, p0, Lcom/google/archery/mediation/MediationAdRequest;->f:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/archery/mediation/MediationAdRequest;->g:Z

    return v0
.end method
