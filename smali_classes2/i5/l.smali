.class public final Li5/l;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li5/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lt3/b;

.field public final d:Lx3/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li5/m;

    invoke-direct {v0}, Li5/m;-><init>()V

    sput-object v0, Li5/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILt3/b;Lx3/p0;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Li5/l;->a:I

    iput-object p2, p0, Li5/l;->b:Lt3/b;

    iput-object p3, p0, Li5/l;->d:Lx3/p0;

    return-void
.end method


# virtual methods
.method public final X0()Lt3/b;
    .locals 1

    iget-object v0, p0, Li5/l;->b:Lt3/b;

    return-object v0
.end method

.method public final Y0()Lx3/p0;
    .locals 1

    iget-object v0, p0, Li5/l;->d:Lx3/p0;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Li5/l;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Li5/l;->b:Lt3/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Li5/l;->d:Lx3/p0;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
