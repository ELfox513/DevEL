.class public final Lt3/d0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt3/d0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final d:Z

.field public final k:Landroid/content/Context;

.field public final p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/e0;

    invoke-direct {v0}, Lt3/e0;-><init>()V

    sput-object v0, Lt3/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lt3/d0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lt3/d0;->b:Z

    iput-boolean p3, p0, Lt3/d0;->d:Z

    invoke-static {p4}, Lf4/a$a;->o0(Landroid/os/IBinder;)Lf4/a;

    move-result-object p1

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lt3/d0;->k:Landroid/content/Context;

    iput-boolean p5, p0, Lt3/d0;->p:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lt3/d0;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lt3/d0;->b:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lt3/d0;->d:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lt3/d0;->k:Landroid/content/Context;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Ly3/c;->k(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-boolean v0, p0, Lt3/d0;->p:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
