.class public final La3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static/range {p1 .. p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Ly3/b;->m(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v0, v2}, Ly3/b;->y(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v29, v2

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v28, v2

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v24, v2

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_0

    :pswitch_b
    sget-object v3, Lz2/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lz2/j;

    move-object/from16 v19, v2

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_0

    :pswitch_d
    sget-object v3, Lr4/im0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lr4/im0;

    move-object/from16 v17, v2

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v2

    move v15, v2

    goto/16 :goto_0

    :pswitch_10
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v2

    move v14, v2

    goto/16 :goto_0

    :pswitch_11
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v13, v2

    goto/16 :goto_0

    :pswitch_12
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_0

    :pswitch_13
    invoke-static {v0, v2}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v2

    move v11, v2

    goto/16 :goto_0

    :pswitch_14
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto/16 :goto_0

    :pswitch_15
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_0

    :pswitch_16
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_0

    :pswitch_17
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_0

    :pswitch_18
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_0

    :pswitch_19
    sget-object v3, La3/e;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, La3/e;

    move-object v5, v2

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-object v4, v0

    invoke-direct/range {v4 .. v29}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(La3/e;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lr4/im0;Ljava/lang/String;Lz2/j;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    return-object p1
.end method
