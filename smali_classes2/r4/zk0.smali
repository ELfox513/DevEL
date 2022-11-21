.class public final Lr4/zk0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/zk0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final d:Lr4/yt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final k:Lr4/tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/al0;

    invoke-direct {v0}, Lr4/al0;-><init>()V

    sput-object v0, Lr4/zk0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lr4/yt;Lr4/tt;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lr4/zk0;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/zk0;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/zk0;->d:Lr4/yt;

    iput-object p4, p0, Lr4/zk0;->k:Lr4/tt;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lr4/zk0;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/zk0;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/zk0;->d:Lr4/yt;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lr4/zk0;->k:Lr4/tt;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
