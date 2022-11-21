.class public Lx3/e;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx3/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lx3/s;

.field public final b:Z

.field public final d:Z

.field public final k:[I

.field public final p:I

.field public final q:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/j1;

    invoke-direct {v0}, Lx3/j1;-><init>()V

    sput-object v0, Lx3/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lx3/s;ZZ[II[I)V
    .locals 0
    .param p1    # Lx3/s;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lx3/e;->a:Lx3/s;

    iput-boolean p2, p0, Lx3/e;->b:Z

    iput-boolean p3, p0, Lx3/e;->d:Z

    iput-object p4, p0, Lx3/e;->k:[I

    iput p5, p0, Lx3/e;->p:I

    iput-object p6, p0, Lx3/e;->q:[I

    return-void
.end method


# virtual methods
.method public X0()I
    .locals 1

    iget v0, p0, Lx3/e;->p:I

    return v0
.end method

.method public Y0()[I
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/e;->k:[I

    return-object v0
.end method

.method public Z0()[I
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/e;->q:[I

    return-object v0
.end method

.method public a1()Z
    .locals 1

    iget-boolean v0, p0, Lx3/e;->b:Z

    return v0
.end method

.method public b1()Z
    .locals 1

    iget-boolean v0, p0, Lx3/e;->d:Z

    return v0
.end method

.method public c1()Lx3/s;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lx3/e;->a:Lx3/s;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lx3/e;->c1()Lx3/s;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lx3/e;->a1()Z

    move-result p2

    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lx3/e;->b1()Z

    move-result p2

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lx3/e;->Y0()[I

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v3}, Ly3/c;->m(Landroid/os/Parcel;I[IZ)V

    invoke-virtual {p0}, Lx3/e;->X0()I

    move-result p2

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lx3/e;->Z0()[I

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v3}, Ly3/c;->m(Landroid/os/Parcel;I[IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
