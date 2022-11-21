.class public Lx3/u;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx3/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx3/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/y;

    invoke-direct {v0}, Lx3/y;-><init>()V

    sput-object v0, Lx3/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lx3/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lx3/u;->a:I

    iput-object p2, p0, Lx3/u;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final X0()I
    .locals 1

    iget v0, p0, Lx3/u;->a:I

    return v0
.end method

.method public final Y0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx3/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx3/u;->b:Ljava/util/List;

    return-object v0
.end method

.method public final Z0(Lx3/n;)V
    .locals 1
    .param p1    # Lx3/n;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lx3/u;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx3/u;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lx3/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lx3/u;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lx3/u;->b:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->v(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
