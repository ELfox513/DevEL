.class public final Lr4/e20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lr4/d20;",
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
    .locals 12

    invoke-static {p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v9, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

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
    invoke-static {p1, v1}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v1

    move v11, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v10, v1

    goto :goto_0

    :pswitch_2
    sget-object v2, Lr4/xy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lr4/xy;

    move-object v9, v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v1

    move v8, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v7, v1

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v1}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v1

    move v6, v1

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v1}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v1

    move v5, v1

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v1}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance p1, Lr4/d20;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lr4/d20;-><init>(IZIZILr4/xy;ZI)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lr4/d20;

    return-object p1
.end method
