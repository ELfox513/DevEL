.class public abstract Lr4/kb0;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/lb0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static f7(Landroid/os/IBinder;)Lr4/lb0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/lb0;

    if-eqz v1, :cond_1

    check-cast v0, Lr4/lb0;

    return-object v0

    :cond_1
    new-instance v0, Lr4/jb0;

    invoke-direct {v0, p0}, Lr4/jb0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    sget-object p1, Lr4/lt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/lt;

    invoke-interface {p0, p1}, Lr4/lb0;->s6(Lr4/lt;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lr4/lt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/lt;

    invoke-interface {p0, p1}, Lr4/lb0;->u5(Lr4/lt;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lr4/lb0;->Z6(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/lb0;->x0(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p0}, Lr4/lb0;->t()V

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p0}, Lr4/lb0;->n()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lr4/lb0;->d0(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/uh0;->f7(Landroid/os/IBinder;)Lr4/vh0;

    move-result-object p1

    invoke-interface {p0, p1}, Lr4/lb0;->y1(Lr4/vh0;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-interface {p0}, Lr4/lb0;->m()V

    goto/16 :goto_0

    :pswitch_a
    sget-object p1, Lr4/rh0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/rh0;

    invoke-interface {p0, p1}, Lr4/lb0;->L6(Lr4/rh0;)V

    goto :goto_0

    :pswitch_b
    invoke-interface {p0}, Lr4/lb0;->q()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    invoke-interface {p0}, Lr4/lb0;->p()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lr4/f30;->f7(Landroid/os/IBinder;)Lr4/g30;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lr4/lb0;->Z5(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_10
    invoke-interface {p0}, Lr4/lb0;->i()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lr4/pb0;

    if-eqz p4, :cond_0

    check-cast p2, Lr4/pb0;

    goto :goto_0

    :cond_0
    new-instance p2, Lr4/pb0;

    invoke-direct {p2, p1}, Lr4/pb0;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_12
    invoke-interface {p0}, Lr4/lb0;->h()V

    goto :goto_0

    :pswitch_13
    invoke-interface {p0}, Lr4/lb0;->j()V

    goto :goto_0

    :pswitch_14
    invoke-interface {p0}, Lr4/lb0;->f()V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lr4/lb0;->W(I)V

    goto :goto_0

    :pswitch_16
    invoke-interface {p0}, Lr4/lb0;->d()V

    goto :goto_0

    :pswitch_17
    invoke-interface {p0}, Lr4/lb0;->c()V

    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
