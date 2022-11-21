.class public final Lt3/g0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt3/g0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/h0;

    invoke-direct {v0}, Lt3/h0;-><init>()V

    sput-object v0, Lt3/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-boolean p1, p0, Lt3/g0;->a:Z

    iput-object p2, p0, Lt3/g0;->b:Ljava/lang/String;

    invoke-static {p3}, Lt3/f0;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lt3/g0;->d:I

    return-void
.end method


# virtual methods
.method public final X0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt3/g0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final Y0()I
    .locals 1

    iget v0, p0, Lt3/g0;->d:I

    invoke-static {v0}, Lt3/f0;->a(I)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lt3/g0;->a:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lt3/g0;->b:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lt3/g0;->d:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lt3/g0;->a:Z

    return v0
.end method
