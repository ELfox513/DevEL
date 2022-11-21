.class public Lx3/n;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx3/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final d:I

.field public final k:J

.field public final p:J

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/i0;

    invoke-direct {v0}, Lx3/i0;-><init>()V

    sput-object v0, Lx3/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lx3/n;->a:I

    iput p2, p0, Lx3/n;->b:I

    iput p3, p0, Lx3/n;->d:I

    iput-wide p4, p0, Lx3/n;->k:J

    iput-wide p6, p0, Lx3/n;->p:J

    iput-object p8, p0, Lx3/n;->q:Ljava/lang/String;

    iput-object p9, p0, Lx3/n;->r:Ljava/lang/String;

    iput p10, p0, Lx3/n;->s:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lx3/n;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lx3/n;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lx3/n;->d:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lx3/n;->k:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lx3/n;->p:J

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lx3/n;->q:Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lx3/n;->r:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lx3/n;->s:I

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
