.class public final Lg5/d3;
.super Lb5/o0;
.source "SourceFile"

# interfaces
.implements Lg5/g3;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, p1, v0}, Lb5/o0;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C5(Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final F4(Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final H1(Ljava/lang/String;Ljava/lang/String;ZLg5/pa;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lg5/pa;",
            ")",
            "Ljava/util/List<",
            "Lg5/ea;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lb5/q0;->c(Landroid/os/Parcel;Z)V

    invoke-static {v0, p4}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lb5/o0;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg5/ea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final L3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final M3(Lg5/u;Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final N6(Lg5/ea;Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final V1(Lg5/u;Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lb5/o0;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final Y5(Ljava/lang/String;Ljava/lang/String;Lg5/pa;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lg5/pa;",
            ")",
            "Ljava/util/List<",
            "Lg5/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lb5/o0;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg5/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final a5(Lg5/c;Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e4(Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g6(Lg5/pa;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lb5/o0;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final j5(Landroid/os/Bundle;Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final p2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lg5/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2, p1}, Lb5/o0;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg5/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final q3(Lg5/pa;)V
    .locals 1

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb5/q0;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lb5/o0;->t0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lg5/ea;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/o0;->j0()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p4}, Lb5/q0;->c(Landroid/os/Parcel;Z)V

    const/16 p2, 0xf

    invoke-virtual {p0, p2, p1}, Lb5/o0;->o0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg5/ea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
