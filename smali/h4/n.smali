.class public final Lh4/n;
.super Lk4/i;
.source "SourceFile"

# interfaces
.implements Lh4/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lh4/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/o;

    invoke-direct {v0}, Lh4/o;-><init>()V

    sput-object v0, Lh4/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lk4/i;-><init>()V

    iput p1, p0, Lh4/n;->a:I

    return-void
.end method

.method public static X0(Lh4/b;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lh4/b;->S0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static Y0(Lh4/b;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lh4/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lh4/b;

    invoke-interface {p1}, Lh4/b;->S0()I

    move-result p1

    invoke-interface {p0}, Lh4/b;->S0()I

    move-result p0

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static Z0(Lh4/b;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lx3/o;->c(Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Lh4/b;->S0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "FriendsListVisibilityStatus"

    invoke-virtual {v0, v1, p0}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    invoke-virtual {v0}, Lx3/o$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final S0()I
    .locals 1

    iget v0, p0, Lh4/n;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lh4/n;->Y0(Lh4/b;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lh4/n;->X0(Lh4/b;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lh4/n;->Z0(Lh4/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lh4/n;->S0()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
