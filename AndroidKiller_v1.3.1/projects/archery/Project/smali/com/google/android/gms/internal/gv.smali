.class public final Lcom/google/android/gms/internal/gv;
.super Ljava/lang/Object;


# direct methods
.method public static aW(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "MatchTurnStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown match turn status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TURN_STATUS_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TURN_STATUS_INVITED"

    goto :goto_0

    :pswitch_1
    const-string v0, "TURN_STATUS_MY_TURN"

    goto :goto_0

    :pswitch_2
    const-string v0, "TURN_STATUS_THEIR_TURN"

    goto :goto_0

    :pswitch_3
    const-string v0, "TURN_STATUS_COMPLETE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
