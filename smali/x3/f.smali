.class public Lx3/f;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx3/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public d:I

.field public k:Ljava/lang/String;

.field public p:Landroid/os/IBinder;

.field public q:[Lcom/google/android/gms/common/api/Scope;

.field public r:Landroid/os/Bundle;

.field public s:Landroid/accounts/Account;

.field public t:[Lt3/d;

.field public u:[Lt3/d;

.field public v:Z

.field public w:I

.field public x:Z

.field public final y:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/k1;

    invoke-direct {v0}, Lx3/k1;-><init>()V

    sput-object v0, Lx3/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lt3/d;[Lt3/d;ZIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lx3/f;->a:I

    iput p2, p0, Lx3/f;->b:I

    iput p3, p0, Lx3/f;->d:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lx3/f;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lx3/f;->k:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    if-eqz p5, :cond_1

    invoke-static {p5}, Lx3/j$a;->o0(Landroid/os/IBinder;)Lx3/j;

    move-result-object p1

    invoke-static {p1}, Lx3/a;->t0(Lx3/j;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lx3/f;->s:Landroid/accounts/Account;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lx3/f;->p:Landroid/os/IBinder;

    iput-object p8, p0, Lx3/f;->s:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Lx3/f;->q:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lx3/f;->r:Landroid/os/Bundle;

    iput-object p9, p0, Lx3/f;->t:[Lt3/d;

    iput-object p10, p0, Lx3/f;->u:[Lt3/d;

    iput-boolean p11, p0, Lx3/f;->v:Z

    iput p12, p0, Lx3/f;->w:I

    iput-boolean p13, p0, Lx3/f;->x:Z

    iput-object p14, p0, Lx3/f;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ly3/a;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lx3/f;->a:I

    sget v0, Lt3/h;->a:I

    iput v0, p0, Lx3/f;->d:I

    iput p1, p0, Lx3/f;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx3/f;->v:Z

    iput-object p2, p0, Lx3/f;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final X0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/f;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lx3/k1;->a(Lx3/f;Landroid/os/Parcel;I)V

    return-void
.end method
