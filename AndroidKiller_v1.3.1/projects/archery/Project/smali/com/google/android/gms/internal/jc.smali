.class public final Lcom/google/android/gms/internal/jc;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->it()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCircledByCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "personId"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ir$c;

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ir$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    const-string v0, "objectType"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ir$e;->aT(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic getOrganizations()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->iq()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPlacesLived()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->ir()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRelationshipStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUrls()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->is()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasAboutMe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasAgeRange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasBirthday()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasBraggingRights()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasCircledByCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasCurrentLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasGender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasIsPlusUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNickname()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasObjectType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasOrganizations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPlacesLived()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPlusOneCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasRelationshipStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTagline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasUrls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasVerified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iq()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public ir()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public is()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPlusUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVerified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public it()Lcom/google/android/gms/plus/model/people/Person;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ir;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ir$c;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getObjectType()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ir;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ir$c;ILjava/lang/String;)V

    return-object v0
.end method
