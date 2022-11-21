.class public abstract Lr4/dd0;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/ed0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static f7(Landroid/os/IBinder;)Lr4/ed0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/ed0;

    if-eqz v1, :cond_1

    check-cast v0, Lr4/ed0;

    return-object v0

    :cond_1
    new-instance v0, Lr4/cd0;

    invoke-direct {v0, p0}, Lr4/cd0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14

    move-object v8, p0

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-eq v0, v10, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/4 v3, 0x3

    if-eq v0, v3, :cond_11

    const/4 v3, 0x5

    if-eq v0, v3, :cond_10

    const/16 v3, 0xa

    if-eq v0, v3, :cond_f

    const/16 v3, 0xb

    if-eq v0, v3, :cond_e

    const-string v3, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    const-string v4, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    const-string v5, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/yc0;

    if-eqz v3, :cond_1

    check-cast v2, Lr4/yc0;

    goto :goto_0

    :cond_1
    new-instance v2, Lr4/wc0;

    invoke-direct {v2, v0}, Lr4/wc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v12

    sget-object v0, Lr4/d20;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lr4/d20;

    move-object v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-interface/range {v0 .. v7}, Lr4/ed0;->T3(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;Lr4/d20;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_2
    invoke-interface {v0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v5, v2, Lr4/sc0;

    if-eqz v5, :cond_3

    check-cast v2, Lr4/sc0;

    goto :goto_2

    :cond_3
    new-instance v2, Lr4/pc0;

    invoke-direct {v2, v0}, Lr4/pc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v11

    sget-object v0, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lr4/yt;

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v6

    move-object v4, v7

    move-object v6, v11

    move-object v7, v12

    invoke-interface/range {v0 .. v7}, Lr4/ed0;->i6(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/sc0;Lr4/lb0;Lr4/yt;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_4
    move-object v11, v2

    goto :goto_5

    :cond_4
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lr4/bd0;

    if-eqz v4, :cond_5

    check-cast v2, Lr4/bd0;

    goto :goto_4

    :cond_5
    new-instance v2, Lr4/zc0;

    invoke-direct {v2, v0}, Lr4/zc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v12

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    invoke-interface/range {v0 .. v6}, Lr4/ed0;->z1(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/bd0;Lr4/lb0;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lr4/ed0;->J0(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_6
    move-object v11, v2

    goto :goto_7

    :cond_6
    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/yc0;

    if-eqz v3, :cond_7

    check-cast v2, Lr4/yc0;

    goto :goto_6

    :cond_7
    new-instance v2, Lr4/wc0;

    invoke-direct {v2, v0}, Lr4/wc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v12

    move-object v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    invoke-interface/range {v0 .. v6}, Lr4/ed0;->y5(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v0

    invoke-interface {p0, v0}, Lr4/ed0;->u3(Lf4/a;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v9, v0}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_10

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_8
    move-object v11, v2

    goto :goto_9

    :cond_8
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lr4/bd0;

    if-eqz v4, :cond_9

    check-cast v2, Lr4/bd0;

    goto :goto_8

    :cond_9
    new-instance v2, Lr4/zc0;

    invoke-direct {v2, v0}, Lr4/zc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v12

    move-object v0, p0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v11

    move-object v6, v12

    invoke-interface/range {v0 .. v6}, Lr4/ed0;->a4(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/bd0;Lr4/lb0;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v0

    invoke-interface {p0, v0}, Lr4/ed0;->s0(Lf4/a;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v9, v0}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_10

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_a
    move-object v7, v2

    goto :goto_b

    :cond_a
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v7, v2, Lr4/vc0;

    if-eqz v7, :cond_b

    check-cast v2, Lr4/vc0;

    goto :goto_a

    :cond_b
    new-instance v2, Lr4/tc0;

    invoke-direct {v2, v0}, Lr4/tc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_a

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v11

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    invoke-interface/range {v0 .. v6}, Lr4/ed0;->G4(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/vc0;Lr4/lb0;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/tt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_c
    move-object v5, v2

    goto :goto_d

    :cond_c
    invoke-interface {v0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v5, v2, Lr4/sc0;

    if-eqz v5, :cond_d

    check-cast v2, Lr4/sc0;

    goto :goto_c

    :cond_d
    new-instance v2, Lr4/pc0;

    invoke-direct {v2, v0}, Lr4/pc0;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/kb0;->f7(Landroid/os/IBinder;)Lr4/lb0;

    move-result-object v11

    sget-object v0, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lr4/yt;

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v6

    move-object v4, v7

    move-object v6, v11

    move-object v7, v12

    invoke-interface/range {v0 .. v7}, Lr4/ed0;->K1(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/sc0;Lr4/lb0;Lr4/yt;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10

    :cond_10
    invoke-interface {p0}, Lr4/ed0;->f()Lr4/lx;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v9, v0}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_10

    :cond_11
    invoke-interface {p0}, Lr4/ed0;->g()Lr4/rd0;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v9, v0}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_10

    :cond_12
    invoke-interface {p0}, Lr4/ed0;->d()Lr4/rd0;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v9, v0}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_10

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    sget-object v0, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr4/yt;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v11, v2

    goto :goto_f

    :cond_14
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lr4/hd0;

    if-eqz v2, :cond_15

    check-cast v1, Lr4/hd0;

    goto :goto_e

    :cond_15
    new-instance v1, Lr4/fd0;

    invoke-direct {v1, v0}, Lr4/fd0;-><init>(Landroid/os/IBinder;)V

    :goto_e
    move-object v11, v1

    :goto_f
    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    invoke-interface/range {v0 .. v6}, Lr4/ed0;->T0(Lf4/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lr4/yt;Lr4/hd0;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_10
    return v10

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_9
        :pswitch_8
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
