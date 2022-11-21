.class public final Lx3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lx3/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lx3/f;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lx3/f;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Lx3/f;->b:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Lx3/f;->d:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lx3/f;->k:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lx3/f;->p:Landroid/os/IBinder;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Ly3/c;->k(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lx3/f;->q:[Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lx3/f;->r:Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lx3/f;->s:Landroid/accounts/Account;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lx3/f;->t:[Lt3/d;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lx3/f;->u:[Lt3/d;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lx3/f;->v:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lx3/f;->w:I

    const/16 v1, 0xd

    invoke-static {p1, v1, p2}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lx3/f;->x:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lx3/f;->X0()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xf

    invoke-static {p1, p2, p0, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v18, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static/range {p1 .. p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Ly3/b;->m(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v0, v2}, Ly3/b;->y(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v17, v2

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v16, v2

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Ly3/b;->n(Landroid/os/Parcel;I)Z

    move-result v2

    move v15, v2

    goto :goto_0

    :pswitch_5
    sget-object v3, Lt3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lt3/d;

    move-object v14, v2

    goto :goto_0

    :pswitch_6
    sget-object v3, Lt3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lt3/d;

    move-object v13, v2

    goto :goto_0

    :pswitch_7
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v12, v2

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Ly3/b;->b(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Ly3/b;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    move-object v10, v2

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Ly3/b;->t(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v2}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v2

    move v7, v2

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v2

    move v6, v2

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v2}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v2

    move v5, v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance v0, Lx3/f;

    move-object v4, v0

    invoke-direct/range {v4 .. v18}, Lx3/f;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lt3/d;[Lt3/d;ZIZLjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lx3/f;

    return-object p1
.end method
