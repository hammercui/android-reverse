.class public Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;
.super Lcom/google/archery/mediation/MediationServerParameters;


# instance fields
.field public height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/archery/mediation/MediationServerParameters$Parameter;
        name = "adxtym_height"
        required = false
    .end annotation
.end field

.field public htmlScript:Ljava/lang/String;
    .annotation runtime Lcom/google/archery/mediation/MediationServerParameters$Parameter;
        name = "adxtym_html"
        required = true
    .end annotation
.end field

.field public passBackUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/archery/mediation/MediationServerParameters$Parameter;
        name = "adxtym_passback_url"
        required = false
    .end annotation
.end field

.field public width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/archery/mediation/MediationServerParameters$Parameter;
        name = "adxtym_width"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/archery/mediation/MediationServerParameters;-><init>()V

    return-void
.end method
