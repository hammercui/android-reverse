.class public interface abstract Lcom/google/android/gms/games/request/Requests;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;,
        Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;
    }
.end annotation


# static fields
.field public static final EXTRA_REQUESTS:Ljava/lang/String; = "requests"

.field public static final REQUEST_DEFAULT_LIFETIME_DAYS:I = -0x1

.field public static final REQUEST_DIRECTION_INBOUND:I = 0x0

.field public static final REQUEST_DIRECTION_OUTBOUND:I = 0x1

.field public static final REQUEST_UPDATE_OUTCOME_FAIL:I = 0x1

.field public static final REQUEST_UPDATE_OUTCOME_RETRY:I = 0x2

.field public static final REQUEST_UPDATE_OUTCOME_SUCCESS:I = 0x0

.field public static final REQUEST_UPDATE_TYPE_ACCEPT:I = 0x0

.field public static final REQUEST_UPDATE_TYPE_DISMISS:I = 0x1

.field public static final SORT_ORDER_EXPIRING_SOON_FIRST:I = 0x0

.field public static final SORT_ORDER_SOCIAL_AGGREGATION:I = 0x1


# virtual methods
.method public abstract acceptRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract acceptRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dismissRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dismissRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGameRequestsFromInboxResponse(Landroid/content/Intent;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract getMaxLifetimeDays(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.end method

.method public abstract getMaxPayloadSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.end method

.method public abstract getSendIntent(Lcom/google/android/gms/common/api/GoogleApiClient;I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "III)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
.end method

.method public abstract unregisterRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method
