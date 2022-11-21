.class public Lh4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/games/PlayerEntity;",
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
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;
    .locals 35

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-wide v13, v2

    move-wide/from16 v16, v13

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v25, v22

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v33, v30

    move-object/from16 v34, v33

    move-wide/from16 v31, v6

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_3

    invoke-static/range {p1 .. p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Ly3/b;->m(I)I

    move-result v3

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x21

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    invoke-static {v0, v2}, Ly3/b;->y(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    goto :goto_0

    :pswitch_1
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    :pswitch_3
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/net/Uri;

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v26

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v24

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v23

    goto :goto_0

    :pswitch_8
    sget-object v3, Lh4/k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lh4/k;

    goto :goto_0

    :pswitch_9
    sget-object v3, Ll4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ll4/a;

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v2}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v16

    goto/16 :goto_0

    :pswitch_e
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v15

    goto/16 :goto_0

    :pswitch_f
    invoke-static {v0, v2}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v13

    goto/16 :goto_0

    :pswitch_10
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/net/Uri;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/net/Uri;

    goto/16 :goto_0

    :pswitch_12
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_13
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lh4/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lh4/n;

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lh4/w;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lh4/w;

    goto/16 :goto_0

    :cond_2
    invoke-static {v0, v2}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v31

    goto/16 :goto_0

    :cond_3
    invoke-static {v0, v1}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    move-object v8, v0

    invoke-direct/range {v8 .. v34}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll4/a;Lh4/k;ZZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLh4/w;Lh4/n;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/games/PlayerEntity;

    return-object p1
.end method
