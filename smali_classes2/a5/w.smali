.class public final La5/w;
.super Lk4/i;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La5/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/v;

    invoke-direct {v0}, La5/v;-><init>()V

    sput-object v0, La5/w;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(La5/u;)V
    .locals 1

    invoke-direct {p0}, Lk4/i;-><init>()V

    invoke-virtual {p1}, La5/u;->a()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, La5/w;->a:Landroid/os/Bundle;

    iget-object p1, p1, La5/u;->a:Landroid/os/IBinder;

    iput-object p1, p0, La5/w;->b:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lk4/i;-><init>()V

    iput-object p1, p0, La5/w;->a:Landroid/os/Bundle;

    iput-object p2, p0, La5/w;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, La5/w;->a:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v0, p0, La5/w;->b:Landroid/os/IBinder;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Ly3/c;->k(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
