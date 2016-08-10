.class public final Lcom/google/archery/mediation/admob/AdMobServerParameters;
.super Lcom/google/archery/mediation/MediationServerParameters;


# instance fields
.field public adJson:Ljava/lang/String;

.field public adUnitId:Ljava/lang/String;
    .annotation runtime Lcom/google/archery/mediation/MediationServerParameters$Parameter;
        name = "pubid"
    .end annotation
.end field

.field public allowHouseAds:Ljava/lang/String;
    .annotation runtime Lcom/google/archery/mediation/MediationServerParameters$Parameter;
        name = "mad_hac"
        required = false
    .end annotation
.end field

.field public tagForChildDirectedTreatment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/archery/mediation/MediationServerParameters;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/archery/mediation/admob/AdMobServerParameters;->allowHouseAds:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/archery/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I

    return-void
.end method
