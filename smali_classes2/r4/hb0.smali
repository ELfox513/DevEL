.class public abstract Lr4/hb0;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/ib0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const/4 p4, 0x0

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p4

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/ib0;->c4(Lf4/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_2
    invoke-interface {p0}, Lr4/ib0;->k0()Lr4/ob0;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v3

    sget-object p1, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lr4/yt;

    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/lb0;

    if-eqz p4, :cond_1

    move-object v1, p2

    check-cast v1, Lr4/lb0;

    goto :goto_0

    :cond_1
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p1}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lr4/ib0;->l4(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_4
    invoke-interface {p0}, Lr4/ib0;->X()Lr4/rd0;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_5
    invoke-interface {p0}, Lr4/ib0;->I()Lr4/rd0;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    sget-object p4, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/lb0;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lr4/lb0;

    goto :goto_2

    :cond_3
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p2}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-interface {p0, p1, p4, v2, v1}, Lr4/ib0;->F2(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lr4/j70;->f7(Landroid/os/IBinder;)Lr4/k70;

    move-result-object p4

    sget-object v0, Lr4/q70;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lr4/ib0;->O2(Lf4/a;Lr4/k70;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/ib0;->D4(Lf4/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    sget-object p4, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/lb0;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lr4/lb0;

    goto :goto_3

    :cond_5
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p2}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {p0, p1, p4, v2, v1}, Lr4/ib0;->a7(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_a
    invoke-interface {p0}, Lr4/ib0;->y()Lr4/ub0;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    :pswitch_b
    invoke-interface {p0}, Lr4/ib0;->P()Lr4/lx;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    :pswitch_c
    invoke-static {p2}, Lr4/s2;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lr4/ib0;->j3(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_d
    invoke-interface {p0}, Lr4/ib0;->v()Lr4/g30;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lr4/ph0;->f7(Landroid/os/IBinder;)Lr4/qh0;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lr4/ib0;->o5(Lf4/a;Lr4/qh0;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p4}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_d

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/ib0;->G0(Lf4/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_11
    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lr4/ib0;->q6(Lr4/tt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_12
    invoke-interface {p0}, Lr4/ib0;->t()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_13
    invoke-interface {p0}, Lr4/ib0;->n()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_14
    invoke-interface {p0}, Lr4/ib0;->r()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_d

    :pswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    :pswitch_16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_d

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v3

    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    :goto_4
    move-object v7, v1

    goto :goto_5

    :cond_6
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lr4/lb0;

    if-eqz v0, :cond_7

    move-object v1, p4

    check-cast v1, Lr4/lb0;

    goto :goto_4

    :cond_7
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p1}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :goto_5
    sget-object p1, Lr4/d20;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lr4/d20;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    move-object v2, p0

    invoke-interface/range {v2 .. v9}, Lr4/ib0;->l5(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;Lr4/d20;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_18
    invoke-interface {p0}, Lr4/ib0;->m()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_d

    :pswitch_19
    invoke-interface {p0}, Lr4/ib0;->o()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_1a
    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lr4/ib0;->U5(Lr4/tt;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v1

    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/ph0;->f7(Landroid/os/IBinder;)Lr4/qh0;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lr4/ib0;->a2(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/qh0;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_1c
    invoke-interface {p0}, Lr4/ib0;->l()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_1d
    invoke-interface {p0}, Lr4/ib0;->k()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v3

    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    :goto_6
    move-object v7, v1

    goto :goto_7

    :cond_8
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/lb0;

    if-eqz p4, :cond_9

    move-object v1, p2

    check-cast v1, Lr4/lb0;

    goto :goto_6

    :cond_9
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p1}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :goto_7
    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lr4/ib0;->w2(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v3

    sget-object p1, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lr4/yt;

    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_8
    move-object v8, v1

    goto :goto_9

    :cond_a
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/lb0;

    if-eqz p4, :cond_b

    move-object v1, p2

    check-cast v1, Lr4/lb0;

    goto :goto_8

    :cond_b
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p1}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    :goto_9
    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lr4/ib0;->f6(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_20
    invoke-interface {p0}, Lr4/ib0;->j()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_21
    invoke-interface {p0}, Lr4/ib0;->f()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    sget-object p4, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_a

    :cond_c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/lb0;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lr4/lb0;

    goto :goto_a

    :cond_d
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p2}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    :goto_a
    invoke-interface {p0, p1, p4, v2, v1}, Lr4/ib0;->t1(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d

    :pswitch_23
    invoke-interface {p0}, Lr4/ib0;->d()Lf4/a;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_d

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v3

    sget-object p1, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lr4/yt;

    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    :goto_b
    move-object v7, v1

    goto :goto_c

    :cond_e
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/lb0;

    if-eqz p4, :cond_f

    move-object v1, p2

    check-cast v1, Lr4/lb0;

    goto :goto_b

    :cond_f
    new-instance v1, Lr4/jb0;

    invoke-direct {v1, p1}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    goto :goto_b

    :goto_c
    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lr4/ib0;->N2(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_d
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
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
