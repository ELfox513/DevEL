.class public final Lr4/gb0;
.super Lr4/q2;
.source "SourceFile"

# interfaces
.implements Lr4/ib0;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D0()Lr4/qb0;
    .locals 4

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/qb0;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lr4/qb0;

    goto :goto_0

    :cond_1
    new-instance v2, Lr4/qb0;

    invoke-direct {v2, v1}, Lr4/qb0;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final D4(Lf4/a;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final F2(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x20

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final G0(Lf4/a;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final I()Lr4/rd0;
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lr4/rd0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lr4/rd0;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final O()Z
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lr4/s2;->a(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final O2(Lf4/a;Lr4/k70;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Lr4/k70;",
            "Ljava/util/List<",
            "Lr4/q70;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 p1, 0x1f

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final P()Lr4/lx;
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lr4/kx;->f7(Landroid/os/IBinder;)Lr4/lx;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final U5(Lr4/tt;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final X()Lr4/rd0;
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lr4/rd0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lr4/rd0;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final Z()Lr4/rb0;
    .locals 4

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/rb0;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lr4/rb0;

    goto :goto_0

    :cond_1
    new-instance v2, Lr4/rb0;

    invoke-direct {v2, v1}, Lr4/rb0;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final a2(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/qh0;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p3}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a7(Lf4/a;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p4}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c4(Lf4/a;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x25

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d()Lf4/a;
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f6(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p6}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j3(Z)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->b(Landroid/os/Parcel;Z)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k0()Lr4/ob0;
    .locals 4

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/ob0;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lr4/ob0;

    goto :goto_0

    :cond_1
    new-instance v2, Lr4/mb0;

    invoke-direct {v2, v1}, Lr4/mb0;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l4(Lf4/a;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p6}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x23

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l5(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;Lr4/d20;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lr4/lb0;",
            "Lr4/d20;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p5}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p6}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lr4/s2;->a(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final o5(Lf4/a;Lr4/qh0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Lr4/qh0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final w2(Lf4/a;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p5}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lr4/q2;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final y()Lr4/ub0;
    .locals 4

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lr4/ub0;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lr4/ub0;

    goto :goto_0

    :cond_1
    new-instance v2, Lr4/sb0;

    invoke-direct {v2, v1}, Lr4/sb0;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
