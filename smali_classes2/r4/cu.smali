.class public final Lr4/cu;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/cu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public d:Lr4/lt;

.field public final k:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/du;

    invoke-direct {v0}, Lr4/du;-><init>()V

    sput-object v0, Lr4/cu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLr4/lt;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lr4/cu;->a:Ljava/lang/String;

    iput-wide p2, p0, Lr4/cu;->b:J

    iput-object p4, p0, Lr4/cu;->d:Lr4/lt;

    iput-object p5, p0, Lr4/cu;->k:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lr4/cu;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Lr4/cu;->b:J

    const/4 v4, 0x2

    invoke-static {p1, v4, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lr4/cu;->d:Lr4/lt;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lr4/cu;->k:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
