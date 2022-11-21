.class public abstract Lr4/ai0;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/bi0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    invoke-interface {p0}, Lr4/bi0;->i()V

    goto :goto_1

    :pswitch_1
    invoke-interface {p0}, Lr4/bi0;->h()V

    goto :goto_1

    :pswitch_2
    sget-object p1, Lr4/lt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/lt;

    invoke-interface {p0, p1}, Lr4/bi0;->J3(Lr4/lt;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lr4/bi0;->Y(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/vh0;

    if-eqz p4, :cond_1

    move-object p1, p2

    check-cast p1, Lr4/vh0;

    goto :goto_0

    :cond_1
    new-instance p2, Lr4/th0;

    invoke-direct {p2, p1}, Lr4/th0;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-interface {p0, p1}, Lr4/bi0;->G2(Lr4/vh0;)V

    goto :goto_1

    :pswitch_5
    invoke-interface {p0}, Lr4/bi0;->d()V

    goto :goto_1

    :pswitch_6
    invoke-interface {p0}, Lr4/bi0;->c()V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
