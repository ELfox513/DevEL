.class public final Li5/b;
.super Ly3/a;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li5/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:I

.field public d:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li5/c;

    invoke-direct {v0}, Li5/c;-><init>()V

    sput-object v0, Li5/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Li5/b;-><init>(IILandroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Li5/b;->a:I

    iput p2, p0, Li5/b;->b:I

    iput-object p3, p0, Li5/b;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Li5/b;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->q:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->u:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Li5/b;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Li5/b;->b:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Li5/b;->d:Landroid/content/Intent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
