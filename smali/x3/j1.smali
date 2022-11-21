.class public final Lx3/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lx3/e;",
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
    .locals 10

    invoke-static {p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v7, v4

    move-object v9, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Ly3/b;->m(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, v1}, Ly3/b;->y(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Ly3/b;->d(Landroid/os/Parcel;I)[I

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v1

    move v8, v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Ly3/b;->d(Landroid/os/Parcel;I)[I

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v6, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v5, v1

    goto :goto_0

    :pswitch_5
    sget-object v2, Lx3/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lx3/s;

    move-object v4, v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance p1, Lx3/e;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lx3/e;-><init>(Lx3/s;ZZ[II[I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lx3/e;

    return-object p1
.end method
