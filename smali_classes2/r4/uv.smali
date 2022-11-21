.class public abstract Lr4/uv;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/vv;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/kw;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Lr4/kw;

    goto :goto_0

    :cond_1
    new-instance p4, Lr4/hw;

    invoke-direct {p4, p1}, Lr4/hw;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p0, p4}, Lr4/vv;->s5(Lr4/kw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->L1(Lf4/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_3
    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/tt;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.client.IAdLoadCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lr4/lv;

    if-eqz v0, :cond_3

    check-cast p4, Lr4/lv;

    goto :goto_1

    :cond_3
    new-instance p4, Lr4/jv;

    invoke-direct {p4, p2}, Lr4/jv;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {p0, p1, p4}, Lr4/vv;->Q5(Lr4/tt;Lr4/lv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/ex;

    if-eqz p4, :cond_5

    move-object p4, p2

    check-cast p4, Lr4/ex;

    goto :goto_2

    :cond_5
    new-instance p4, Lr4/cx;

    invoke-direct {p4, p1}, Lr4/cx;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-interface {p0, p4}, Lr4/vv;->X4(Lr4/ex;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_5
    invoke-interface {p0}, Lr4/vv;->z()Lr4/hx;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/fo;->f7(Landroid/os/IBinder;)Lr4/go;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->Y1(Lr4/go;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_7
    sget-object p1, Lr4/eu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/eu;

    invoke-interface {p0, p1}, Lr4/vv;->D1(Lr4/eu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->x3(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_9
    invoke-interface {p0}, Lr4/vv;->w()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_8

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/zv;

    if-eqz p4, :cond_7

    move-object p4, p2

    check-cast p4, Lr4/zv;

    goto :goto_3

    :cond_7
    new-instance p4, Lr4/xv;

    invoke-direct {p4, p1}, Lr4/xv;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {p0, p4}, Lr4/vv;->H6(Lr4/zv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_b
    invoke-interface {p0}, Lr4/vv;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_c
    invoke-static {p2}, Lr4/s2;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lr4/vv;->A0(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_d
    invoke-interface {p0}, Lr4/vv;->L()Lr4/iv;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_8

    :pswitch_e
    invoke-interface {p0}, Lr4/vv;->y()Lr4/cw;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_8

    :pswitch_f
    invoke-interface {p0}, Lr4/vv;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_10
    sget-object p1, Lr4/px;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/px;

    invoke-interface {p0, p1}, Lr4/vv;->S5(Lr4/px;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_11
    sget-object p1, Lr4/xy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/xy;

    invoke-interface {p0, p1}, Lr4/vv;->Z1(Lr4/xy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_12
    invoke-interface {p0}, Lr4/vv;->w0()Lr4/lx;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_8

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->x1(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/kh0;->f7(Landroid/os/IBinder;)Lr4/lh0;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->G1(Lr4/lh0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_15
    invoke-interface {p0}, Lr4/vv;->I()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_8

    :pswitch_16
    invoke-static {p2}, Lr4/s2;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lr4/vv;->J4(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/gw;

    if-eqz p4, :cond_9

    move-object p4, p2

    check-cast p4, Lr4/gw;

    goto :goto_4

    :cond_9
    new-instance p4, Lr4/gw;

    invoke-direct {p4, p1}, Lr4/gw;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-interface {p0, p4}, Lr4/vv;->h4(Lr4/gw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/ev;

    if-eqz p4, :cond_b

    move-object p4, p2

    check-cast p4, Lr4/ev;

    goto :goto_5

    :cond_b
    new-instance p4, Lr4/cv;

    invoke-direct {p4, p1}, Lr4/cv;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-interface {p0, p4}, Lr4/vv;->B6(Lr4/ev;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/m00;->f7(Landroid/os/IBinder;)Lr4/n00;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->C1(Lr4/n00;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_1a
    invoke-interface {p0}, Lr4/vv;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/jf0;->f7(Landroid/os/IBinder;)Lr4/kf0;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lr4/vv;->E5(Lr4/kf0;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/ef0;->f7(Landroid/os/IBinder;)Lr4/ff0;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/vv;->B2(Lr4/ff0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_1d
    sget-object p1, Lr4/yt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/yt;

    invoke-interface {p0, p1}, Lr4/vv;->S0(Lr4/yt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_1e
    invoke-interface {p0}, Lr4/vv;->t()Lr4/yt;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_8

    :pswitch_1f
    invoke-interface {p0}, Lr4/vv;->n()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_21
    invoke-interface {p0}, Lr4/vv;->r()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/cw;

    if-eqz p4, :cond_d

    move-object p4, p2

    check-cast p4, Lr4/cw;

    goto :goto_6

    :cond_d
    new-instance p4, Lr4/aw;

    invoke-direct {p4, p1}, Lr4/aw;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-interface {p0, p4}, Lr4/vv;->v4(Lr4/cw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/iv;

    if-eqz p4, :cond_f

    move-object p4, p2

    check-cast p4, Lr4/iv;

    goto :goto_7

    :cond_f
    new-instance p4, Lr4/fv;

    invoke-direct {p4, p1}, Lr4/fv;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-interface {p0, p4}, Lr4/vv;->S1(Lr4/iv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :pswitch_24
    invoke-interface {p0}, Lr4/vv;->p()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :pswitch_25
    invoke-interface {p0}, Lr4/vv;->l()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :pswitch_26
    sget-object p1, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/tt;

    invoke-interface {p0, p1}, Lr4/vv;->w5(Lr4/tt;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto :goto_8

    :pswitch_27
    invoke-interface {p0}, Lr4/vv;->i()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    goto :goto_8

    :pswitch_28
    invoke-interface {p0}, Lr4/vv;->h()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :pswitch_29
    invoke-interface {p0}, Lr4/vv;->j()Lf4/a;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_8
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
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
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
