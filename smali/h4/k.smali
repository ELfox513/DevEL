.class public final Lh4/k;
.super Lk4/i;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lh4/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final d:Lh4/j;

.field public final k:Lh4/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/u;

    invoke-direct {v0}, Lh4/u;-><init>()V

    sput-object v0, Lh4/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLh4/j;Lh4/j;)V
    .locals 3
    .param p5    # Lh4/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lh4/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lk4/i;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lx3/q;->m(Z)V

    invoke-static {p5}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lh4/k;->a:J

    iput-wide p3, p0, Lh4/k;->b:J

    iput-object p5, p0, Lh4/k;->d:Lh4/j;

    iput-object p6, p0, Lh4/k;->k:Lh4/j;

    return-void
.end method


# virtual methods
.method public final X0()Lh4/j;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lh4/k;->d:Lh4/j;

    return-object v0
.end method

.method public final Y0()J
    .locals 2

    iget-wide v0, p0, Lh4/k;->a:J

    return-wide v0
.end method

.method public final Z0()J
    .locals 2

    iget-wide v0, p0, Lh4/k;->b:J

    return-wide v0
.end method

.method public final a1()Lh4/j;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lh4/k;->k:Lh4/j;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lh4/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lh4/k;

    iget-wide v2, p0, Lh4/k;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lh4/k;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lh4/k;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lh4/k;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh4/k;->d:Lh4/j;

    iget-object v3, p1, Lh4/k;->d:Lh4/j;

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh4/k;->k:Lh4/j;

    iget-object p1, p1, Lh4/k;->k:Lh4/j;

    invoke-static {v2, p1}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lh4/k;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lh4/k;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lh4/k;->d:Lh4/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lh4/k;->k:Lh4/j;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lh4/k;->Y0()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lh4/k;->Z0()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lh4/k;->X0()Lh4/j;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lh4/k;->a1()Lh4/j;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
