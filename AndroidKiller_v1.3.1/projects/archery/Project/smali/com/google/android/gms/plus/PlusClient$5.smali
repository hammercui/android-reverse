.class Lcom/google/android/gms/plus/PlusClient$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic QP:Lcom/google/android/gms/plus/PlusClient;

.field final synthetic QQ:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$5;->QP:Lcom/google/android/gms/plus/PlusClient;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$5;->QQ:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$5;->QQ:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->dG()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getNextPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;->onPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/people/PersonBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/People$LoadPeopleResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$5;->a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V

    return-void
.end method
