.class public final Lr4/ny2;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/ny2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/oy2;

    invoke-direct {v0}, Lr4/oy2;-><init>()V

    sput-object v0, Lr4/ny2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/ny2;->a:I

    iput-object p2, p0, Lr4/ny2;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lr4/ny2;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lr4/ny2;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lr4/ny2;->b:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->g(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
