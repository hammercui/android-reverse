.class public interface abstract Lcom/google/android/gms/plus/model/people/Person;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Urls;,
        Lcom/google/android/gms/plus/model/people/Person$PlacesLived;,
        Lcom/google/android/gms/plus/model/people/Person$Organizations;,
        Lcom/google/android/gms/plus/model/people/Person$Name;,
        Lcom/google/android/gms/plus/model/people/Person$Image;,
        Lcom/google/android/gms/plus/model/people/Person$Cover;,
        Lcom/google/android/gms/plus/model/people/Person$AgeRange;,
        Lcom/google/android/gms/plus/model/people/Person$RelationshipStatus;,
        Lcom/google/android/gms/plus/model/people/Person$ObjectType;,
        Lcom/google/android/gms/plus/model/people/Person$Gender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAboutMe()Ljava/lang/String;
.end method

.method public abstract getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
.end method

.method public abstract getBirthday()Ljava/lang/String;
.end method

.method public abstract getBraggingRights()Ljava/lang/String;
.end method

.method public abstract getCircledByCount()I
.end method

.method public abstract getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
.end method

.method public abstract getCurrentLocation()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getGender()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getName()Lcom/google/android/gms/plus/model/people/Person$Name;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getObjectType()I
.end method

.method public abstract getOrganizations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlacesLived()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlusOneCount()I
.end method

.method public abstract getRelationshipStatus()I
.end method

.method public abstract getTagline()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAboutMe()Z
.end method

.method public abstract hasAgeRange()Z
.end method

.method public abstract hasBirthday()Z
.end method

.method public abstract hasBraggingRights()Z
.end method

.method public abstract hasCircledByCount()Z
.end method

.method public abstract hasCover()Z
.end method

.method public abstract hasCurrentLocation()Z
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasGender()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasImage()Z
.end method

.method public abstract hasIsPlusUser()Z
.end method

.method public abstract hasLanguage()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasNickname()Z
.end method

.method public abstract hasObjectType()Z
.end method

.method public abstract hasOrganizations()Z
.end method

.method public abstract hasPlacesLived()Z
.end method

.method public abstract hasPlusOneCount()Z
.end method

.method public abstract hasRelationshipStatus()Z
.end method

.method public abstract hasTagline()Z
.end method

.method public abstract hasUrl()Z
.end method

.method public abstract hasUrls()Z
.end method

.method public abstract hasVerified()Z
.end method

.method public abstract isPlusUser()Z
.end method

.method public abstract isVerified()Z
.end method
