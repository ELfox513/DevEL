.class public final Lr4/xy;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/xy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/yy;

    invoke-direct {v0}, Lr4/yy;-><init>()V

    sput-object v0, Lr4/xy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lt2/w;)V
    .locals 2

    invoke-virtual {p1}, Lt2/w;->c()Z

    move-result v0

    invoke-virtual {p1}, Lt2/w;->b()Z

    move-result v1

    invoke-virtual {p1}, Lt2/w;->a()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lr4/xy;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-boolean p1, p0, Lr4/xy;->a:Z

    iput-boolean p2, p0, Lr4/xy;->b:Z

    iput-boolean p3, p0, Lr4/xy;->d:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lr4/xy;->a:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lr4/xy;->b:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lr4/xy;->d:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
