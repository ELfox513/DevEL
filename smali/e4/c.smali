.class public final Le4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/drive/DriveId;",
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
    .locals 12

    invoke-static {p1}, Ly3/b;->z(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-wide v7, v1

    move-wide v9, v7

    move-object v6, v3

    const/4 v11, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_4

    invoke-static {p1}, Ly3/b;->s(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Ly3/b;->m(I)I

    move-result v2

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
    invoke-static {p1, v1}, Ly3/b;->u(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v9

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Ly3/b;->v(Landroid/os/Parcel;I)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Ly3/b;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Ly3/b;->l(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/drive/DriveId;

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/drive/DriveId;

    return-object p1
.end method
