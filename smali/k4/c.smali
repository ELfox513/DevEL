.class public abstract Lk4/c;
.super La5/a;
.source "SourceFile"

# interfaces
.implements Lk4/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    invoke-direct {p0, v0}, La5/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j0(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/16 p4, 0x1771

    if-eq p1, p4, :cond_7

    const/16 p4, 0x1772

    if-eq p1, p4, :cond_6

    const/16 p4, 0x2eeb

    if-eq p1, p4, :cond_5

    const/16 p4, 0x2eec

    if-eq p1, p4, :cond_4

    const/16 p4, 0x32c9

    if-eq p1, p4, :cond_3

    const/16 p4, 0x32ca

    if-eq p1, p4, :cond_2

    const/16 p4, 0x4a39

    if-eq p1, p4, :cond_1

    const/16 p4, 0x4a3a

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const/4 p1, 0x0

    return p1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Le4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Le4/a;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Le4/a;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Le4/a;

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lk4/p;->W3(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Le4/a;Le4/a;Le4/a;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->z4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lk4/p;->g2(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->m5(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->K3(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->l6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->A1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->k2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    sget-object p4, Le4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Le4/a;

    invoke-interface {p0, p1, p2}, Lk4/p;->f1(Lcom/google/android/gms/common/data/DataHolder;Le4/a;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->w3(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lk4/p;->v0(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->f4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->S4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lk4/p;->A(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->R3(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lk4/p;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lk4/p;->E0(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->i2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->y0(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->W0(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_14
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->Y2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_15
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->r2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->y4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lk4/p;->d3(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_18
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->V5(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->o2(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lk4/p;->Q(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-static {p2}, La5/n;->d(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->R(Z)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->t3(I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->T(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->K0(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->I0(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->g1(I)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lk4/p;->o1(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->v2(I)V

    goto/16 :goto_0

    :sswitch_a
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-interface {p0, p1}, Lk4/p;->z5(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0

    :sswitch_b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->Q2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->y3(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->j4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->W4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->b6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_10
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->O6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_11
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->j1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_12
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->h1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_13
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->U1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->Y(I)V

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->W(I)V

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->C(I)V

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->S(I)V

    goto/16 :goto_0

    :sswitch_18
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->x2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_19
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->D2([Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->P2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lk4/p;->N1(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_1c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->Q1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->D(I)V

    goto/16 :goto_0

    :sswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->M6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->e2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->K6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->x(I)V

    goto/16 :goto_0

    :sswitch_22
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->J6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, La5/n;->d(Landroid/os/Parcel;)Z

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lk4/p;->a1(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lk4/p;->m6(IILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_25
    sget-object p1, Ln4/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ln4/b;

    invoke-interface {p0, p1}, Lk4/p;->V3(Ln4/b;)V

    goto/16 :goto_0

    :sswitch_26
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->P4(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_27
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->W5(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_28
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->R6(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_29
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->q1(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->M1(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->y2(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->r1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_2d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->k3(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_2e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->I2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_2f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->h5(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_30
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->s4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->Z4(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_32
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->Y6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_33
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->h6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_34
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->B5(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :sswitch_35
    invoke-interface {p0}, Lk4/p;->O0()V

    goto/16 :goto_0

    :pswitch_19
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->d2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->p1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->h3(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_1c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->H2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->g5(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_1e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->q4(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p4, p1}, Lk4/p;->y6(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_20
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->W6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->o3(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_22
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->E1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->f0(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, La5/n;->d(Landroid/os/Parcel;)Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lk4/p;->Z0(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Lq4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lq4/a;

    invoke-interface {p0, p1, p2}, Lk4/p;->X0(ILq4/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lk4/p;->p0(I)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->Z2(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lk4/p;->d4(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, La5/n;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lk4/p;->e6(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lk4/p;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lk4/p;->H(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1389
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
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_35
        0x1399 -> :sswitch_34
        0x139a -> :sswitch_33
        0x139b -> :sswitch_32
        0x139c -> :sswitch_31
        0x139d -> :sswitch_30
        0x139e -> :sswitch_2f
        0x139f -> :sswitch_2e
        0x13a0 -> :sswitch_2d
        0x13a1 -> :sswitch_2c
        0x13a2 -> :sswitch_2b
        0x13a3 -> :sswitch_2a
        0x13a4 -> :sswitch_29
        0x13a5 -> :sswitch_28
        0x13a6 -> :sswitch_27
        0x13a7 -> :sswitch_26
        0x13a8 -> :sswitch_25
        0x13a9 -> :sswitch_24
        0x13aa -> :sswitch_23
        0x13ab -> :sswitch_22
        0x13ac -> :sswitch_21
        0x13ad -> :sswitch_20
        0x13ae -> :sswitch_1f
        0x13af -> :sswitch_1e
        0x13b0 -> :sswitch_1d
        0x2329 -> :sswitch_1c
        0x2af9 -> :sswitch_1b
        0x2ee1 -> :sswitch_1a
        0x36b1 -> :sswitch_19
        0x3a99 -> :sswitch_18
        0x426a -> :sswitch_17
        0x4a40 -> :sswitch_16
        0x4a41 -> :sswitch_15
        0x4a42 -> :sswitch_14
        0x4e21 -> :sswitch_13
        0x4e22 -> :sswitch_12
        0x4e23 -> :sswitch_11
        0x4e24 -> :sswitch_10
        0x4e25 -> :sswitch_f
        0x4e26 -> :sswitch_e
        0x4e27 -> :sswitch_d
        0x4e28 -> :sswitch_c
        0x4e29 -> :sswitch_b
        0x4e2c -> :sswitch_a
        0x4e33 -> :sswitch_9
        0x4e34 -> :sswitch_8
        0x59d9 -> :sswitch_7
        0x59da -> :sswitch_6
        0x59db -> :sswitch_5
        0x59dc -> :sswitch_4
        0x59dd -> :sswitch_3
        0x5dc2 -> :sswitch_2
        0x61aa -> :sswitch_1
        0x61ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1f41
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2ee4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2eee
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
