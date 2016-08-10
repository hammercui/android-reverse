.class public final Lcom/google/android/gms/internal/cn;
.super Ljava/lang/Object;


# instance fields
.field public final errorCode:I

.field public final mM:Lcom/google/android/gms/internal/ax;

.field public final mN:Lcom/google/android/gms/internal/bg;

.field public final mO:Ljava/lang/String;

.field public final mP:Lcom/google/android/gms/internal/ba;

.field public final mt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mx:J

.field public final nu:Lcom/google/android/gms/internal/dd;

.field public final oc:Lcom/google/android/gms/internal/z;

.field public final of:Ljava/lang/String;

.field public final oj:J

.field public final ok:Z

.field public final ol:J

.field public final om:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final orientation:I

.field public final pf:Lcom/google/android/gms/internal/ay;

.field public final pg:Lcom/google/android/gms/internal/ab;

.field public final ph:J

.field public final pi:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/dd;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bg;Ljava/lang/String;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ba;JLcom/google/android/gms/internal/ab;JJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/z;",
            "Lcom/google/android/gms/internal/dd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/ax;",
            "Lcom/google/android/gms/internal/bg;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ay;",
            "Lcom/google/android/gms/internal/ba;",
            "J",
            "Lcom/google/android/gms/internal/ab;",
            "JJJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cn;->oc:Lcom/google/android/gms/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/internal/cn;->nu:Lcom/google/android/gms/internal/dd;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/cn;->mt:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/cn;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/cn;->mu:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/cn;->om:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/cn;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/cn;->mx:J

    iput-object p10, p0, Lcom/google/android/gms/internal/cn;->of:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/cn;->ok:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/cn;->mN:Lcom/google/android/gms/internal/bg;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/cn;->mO:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/cn;->mP:Lcom/google/android/gms/internal/ba;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/cn;->ol:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/cn;->pg:Lcom/google/android/gms/internal/ab;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/cn;->oj:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/cn;->ph:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/cn;->pi:J

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
