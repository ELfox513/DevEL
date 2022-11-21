.class public final Lh4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lh4/k;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    invoke-static {p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v9, v1

    move-object v10, v9

    move-wide v5, v2

    move-wide v7, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_4

    invoke-static {p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Ly3/b;->m(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-static {p1, v1}, Ly3/b;->y(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lh4/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lh4/j;

    goto :goto_0

    :cond_1
    sget-object v2, Lh4/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lh4/j;

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v5

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance p1, Lh4/k;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lh4/k;-><init>(JJLh4/j;Lh4/j;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lh4/k;

    return-object p1
.end method
