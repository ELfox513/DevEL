.class public final Lt3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lt3/d0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_5

    invoke-static {p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Ly3/b;->m(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-static {p1, v1}, Ly3/b;->y(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance p1, Lt3/d0;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lt3/d0;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lt3/d0;

    return-object p1
.end method
