.class public final Lr4/lt;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/lt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public k:Lr4/lt;

.field public p:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/nt;

    invoke-direct {v0}, Lr4/nt;-><init>()V

    sput-object v0, Lr4/lt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lr4/lt;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/lt;->a:I

    iput-object p2, p0, Lr4/lt;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/lt;->d:Ljava/lang/String;

    iput-object p4, p0, Lr4/lt;->k:Lr4/lt;

    iput-object p5, p0, Lr4/lt;->p:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final X0()Lt2/a;
    .locals 5

    iget-object v0, p0, Lr4/lt;->k:Lr4/lt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lt2/a;

    iget v2, v0, Lr4/lt;->a:I

    iget-object v3, v0, Lr4/lt;->b:Ljava/lang/String;

    iget-object v0, v0, Lr4/lt;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lt2/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lt2/a;

    iget v2, p0, Lr4/lt;->a:I

    iget-object v3, p0, Lr4/lt;->b:Ljava/lang/String;

    iget-object v4, p0, Lr4/lt;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lt2/a;-><init>(ILjava/lang/String;Ljava/lang/String;Lt2/a;)V

    return-object v1
.end method

.method public final Y0()Lt2/m;
    .locals 11

    iget-object v0, p0, Lr4/lt;->k:Lr4/lt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lt2/a;

    iget v3, v0, Lr4/lt;->a:I

    iget-object v4, v0, Lr4/lt;->b:Ljava/lang/String;

    iget-object v0, v0, Lr4/lt;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lt2/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    :goto_0
    new-instance v0, Lt2/m;

    iget v6, p0, Lr4/lt;->a:I

    iget-object v7, p0, Lr4/lt;->b:Ljava/lang/String;

    iget-object v8, p0, Lr4/lt;->d:Ljava/lang/String;

    iget-object v2, p0, Lr4/lt;->p:Landroid/os/IBinder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.ads.internal.client.IResponseInfo"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v3, v1, Lr4/hx;

    if-eqz v3, :cond_2

    check-cast v1, Lr4/hx;

    goto :goto_1

    :cond_2
    new-instance v1, Lr4/fx;

    invoke-direct {v1, v2}, Lr4/fx;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {v1}, Lt2/u;->d(Lr4/hx;)Lt2/u;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lt2/m;-><init>(ILjava/lang/String;Ljava/lang/String;Lt2/a;Lt2/u;)V

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lr4/lt;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lr4/lt;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/lt;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/lt;->k:Lr4/lt;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lr4/lt;->p:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, Ly3/c;->k(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
