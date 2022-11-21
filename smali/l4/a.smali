.class public final Ll4/a;
.super Lk4/i;
.source "SourceFile"

# interfaces
.implements Ll4/b;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ll4/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final d:J

.field public final k:Landroid/net/Uri;

.field public final p:Landroid/net/Uri;

.field public final q:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll4/c;

    invoke-direct {v0}, Ll4/c;-><init>()V

    sput-object v0, Ll4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lk4/i;-><init>()V

    iput-object p1, p0, Ll4/a;->a:Ljava/lang/String;

    iput-object p2, p0, Ll4/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Ll4/a;->d:J

    iput-object p5, p0, Ll4/a;->k:Landroid/net/Uri;

    iput-object p6, p0, Ll4/a;->p:Landroid/net/Uri;

    iput-object p7, p0, Ll4/a;->q:Landroid/net/Uri;

    return-void
.end method

.method public static X0(Ll4/b;)I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Ll4/b;->L0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Ll4/b;->N0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Ll4/b;->O0()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Ll4/b;->P0()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Ll4/b;->Q0()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-interface {p0}, Ll4/b;->M0()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static Y0(Ll4/b;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Ll4/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Ll4/b;

    invoke-interface {p1}, Ll4/b;->L0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ll4/b;->L0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ll4/b;->N0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ll4/b;->N0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ll4/b;->O0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Ll4/b;->O0()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ll4/b;->P0()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Ll4/b;->P0()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ll4/b;->Q0()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Ll4/b;->Q0()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ll4/b;->M0()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0}, Ll4/b;->M0()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p0}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static Z0(Ll4/b;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lx3/o;->c(Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Ll4/b;->L0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameId"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Ll4/b;->N0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameName"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Ll4/b;->O0()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ActivityTimestampMillis"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Ll4/b;->P0()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GameIconUri"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Ll4/b;->Q0()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "GameHiResUri"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-interface {p0}, Ll4/b;->M0()Landroid/net/Uri;

    move-result-object p0

    const-string v1, "GameFeaturedUri"

    invoke-virtual {v0, v1, p0}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lx3/o$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final L0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ll4/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final M0()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ll4/a;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public final N0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ll4/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final O0()J
    .locals 2

    iget-wide v0, p0, Ll4/a;->d:J

    return-wide v0
.end method

.method public final P0()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ll4/a;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public final Q0()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Ll4/a;->p:Landroid/net/Uri;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Ll4/a;->Y0(Ll4/b;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ll4/a;->X0(Ll4/b;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p0}, Ll4/a;->Z0(Ll4/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ll4/a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Ll4/a;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Ll4/a;->d:J

    const/4 v4, 0x3

    invoke-static {p1, v4, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Ll4/a;->k:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Ll4/a;->p:Landroid/net/Uri;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Ll4/a;->q:Landroid/net/Uri;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
