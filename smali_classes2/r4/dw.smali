.class public final Lr4/dw;
.super Lr4/q2;
.source "SourceFile"

# interfaces
.implements Lr4/fw;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IClientApi"

    invoke-direct {p0, p1, v0}, Lr4/q2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A6(Lf4/a;Lr4/fb0;I)Lr4/vk0;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, p2}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, p3}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lr4/uk0;->f7(Landroid/os/IBinder;)Lr4/vk0;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final I3(Lf4/a;Lr4/yt;Ljava/lang/String;I)Lr4/vv;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p4

    invoke-static {p4, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p4, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p4, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p4}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lr4/vv;

    if-eqz p4, :cond_1

    move-object p2, p3

    check-cast p2, Lr4/vv;

    goto :goto_0

    :cond_1
    new-instance p3, Lr4/tv;

    invoke-direct {p3, p2}, Lr4/tv;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final K4(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p5

    invoke-static {p5, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p5, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p5, p4}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p5}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lr4/vv;

    if-eqz p4, :cond_1

    move-object p2, p3

    check-cast p2, Lr4/vv;

    goto :goto_0

    :cond_1
    new-instance p3, Lr4/tv;

    invoke-direct {p3, p2}, Lr4/tv;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final O3(Lf4/a;Lr4/fb0;I)Lr4/ke0;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, p2}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xf

    invoke-virtual {p0, p1, p3}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lr4/je0;->f7(Landroid/os/IBinder;)Lr4/ke0;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final P3(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p5

    invoke-static {p5, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p5, p2}, Lr4/s2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p5, p4}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p5, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p5}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lr4/vv;

    if-eqz p4, :cond_1

    move-object p2, p3

    check-cast p2, Lr4/vv;

    goto :goto_0

    :cond_1
    new-instance p3, Lr4/tv;

    invoke-direct {p3, p2}, Lr4/tv;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final U(Lf4/a;)Lr4/we0;
    .locals 1

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr4/ve0;->f7(Landroid/os/IBinder;)Lr4/we0;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final b4(Lf4/a;I)Lr4/nw;
    .locals 2

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, p2}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/nw;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lr4/nw;

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/lw;

    invoke-direct {v0, p2}, Lr4/lw;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final m1(Lf4/a;Ljava/lang/String;Lr4/fb0;I)Lr4/rv;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p4

    invoke-static {p4, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p4, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p4}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lr4/rv;

    if-eqz p4, :cond_1

    move-object p2, p3

    check-cast p2, Lr4/rv;

    goto :goto_0

    :cond_1
    new-instance p3, Lr4/pv;

    invoke-direct {p3, p2}, Lr4/pv;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final x5(Lf4/a;Ljava/lang/String;Lr4/fb0;I)Lr4/yh0;
    .locals 0

    invoke-virtual {p0}, Lr4/q2;->j0()Landroid/os/Parcel;

    move-result-object p4

    invoke-static {p4, p1}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p4, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lr4/s2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xcbe6bb0

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p4}, Lr4/q2;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lr4/xh0;->f7(Landroid/os/IBinder;)Lr4/yh0;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
