.class public Lj7/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lj7/h;",
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
.method public a(Landroid/os/Parcel;)Lj7/h;
    .locals 2

    new-instance v0, Lj7/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj7/h;-><init>(Landroid/os/Parcel;Lj7/h$a;)V

    return-object v0
.end method

.method public b(I)[Lj7/h;
    .locals 0

    new-array p1, p1, [Lj7/h;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj7/h$a;->a(Landroid/os/Parcel;)Lj7/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj7/h$a;->b(I)[Lj7/h;

    move-result-object p1

    return-object p1
.end method
