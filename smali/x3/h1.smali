.class public final Lx3/h1;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx3/h1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:[Lt3/d;

.field public d:I

.field public k:Lx3/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/i1;

    invoke-direct {v0}, Lx3/i1;-><init>()V

    sput-object v0, Lx3/h1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lt3/d;ILx3/e;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lx3/h1;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lx3/h1;->b:[Lt3/d;

    iput p3, p0, Lx3/h1;->d:I

    iput-object p4, p0, Lx3/h1;->k:Lx3/e;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lx3/h1;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lx3/h1;->b:[Lt3/d;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->u(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget v1, p0, Lx3/h1;->d:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lx3/h1;->k:Lx3/e;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
