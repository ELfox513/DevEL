.class public abstract Lr4/fg0;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/gg0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p4, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 v1, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v1, :cond_9

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/kg0;

    if-eqz v1, :cond_2

    check-cast v0, Lr4/kg0;

    goto :goto_0

    :cond_2
    new-instance v0, Lr4/ig0;

    invoke-direct {v0, p2}, Lr4/ig0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p0, p1, v0}, Lr4/gg0;->c3(Ljava/lang/String;Lr4/kg0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    :cond_3
    sget-object p1, Lr4/og0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/og0;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/kg0;

    if-eqz v1, :cond_5

    check-cast v0, Lr4/kg0;

    goto :goto_1

    :cond_5
    new-instance v0, Lr4/ig0;

    invoke-direct {v0, p2}, Lr4/ig0;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {p0, p1, v0}, Lr4/gg0;->k4(Lr4/og0;Lr4/kg0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    :cond_6
    sget-object p1, Lr4/og0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/og0;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/kg0;

    if-eqz v1, :cond_8

    check-cast v0, Lr4/kg0;

    goto :goto_2

    :cond_8
    new-instance v0, Lr4/ig0;

    invoke-direct {v0, p2}, Lr4/ig0;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-interface {p0, p1, v0}, Lr4/gg0;->w6(Lr4/og0;Lr4/kg0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    :cond_9
    sget-object p1, Lr4/og0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/og0;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/kg0;

    if-eqz v1, :cond_b

    check-cast v0, Lr4/kg0;

    goto :goto_3

    :cond_b
    new-instance v0, Lr4/ig0;

    invoke-direct {v0, p2}, Lr4/ig0;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {p0, p1, v0}, Lr4/gg0;->t5(Lr4/og0;Lr4/kg0;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    :cond_c
    sget-object p1, Lr4/zf0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/zf0;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const-string p2, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lr4/hg0;

    if-eqz v0, :cond_e

    check-cast p2, Lr4/hg0;

    goto :goto_4

    :cond_e
    new-instance p2, Lr4/hg0;

    invoke-direct {p2, p1}, Lr4/hg0;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    :cond_f
    sget-object p1, Lr4/zf0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/zf0;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lr4/s2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_5
    return p4
.end method
