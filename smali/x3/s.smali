.class public Lx3/s;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx3/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final d:Z

.field public final k:I

.field public final p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/z0;

    invoke-direct {v0}, Lx3/z0;-><init>()V

    sput-object v0, Lx3/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lx3/s;->a:I

    iput-boolean p2, p0, Lx3/s;->b:Z

    iput-boolean p3, p0, Lx3/s;->d:Z

    iput p4, p0, Lx3/s;->k:I

    iput p5, p0, Lx3/s;->p:I

    return-void
.end method


# virtual methods
.method public X0()I
    .locals 1

    iget v0, p0, Lx3/s;->k:I

    return v0
.end method

.method public Y0()I
    .locals 1

    iget v0, p0, Lx3/s;->p:I

    return v0
.end method

.method public Z0()Z
    .locals 1

    iget-boolean v0, p0, Lx3/s;->b:Z

    return v0
.end method

.method public a1()Z
    .locals 1

    iget-boolean v0, p0, Lx3/s;->d:Z

    return v0
.end method

.method public b1()I
    .locals 1

    iget v0, p0, Lx3/s;->a:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lx3/s;->b1()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lx3/s;->Z0()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lx3/s;->a1()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lx3/s;->X0()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lx3/s;->Y0()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
