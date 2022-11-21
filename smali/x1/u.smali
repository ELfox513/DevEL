.class public abstract Lx1/u;
.super Lx1/v;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lx1/v;-><init>()V

    iput-wide p1, p0, Lx1/u;->a:J

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-wide v0, p0, Lx1/u;->a:J

    return-wide v0
.end method

.method public d(Lx1/a;)I
    .locals 4

    check-cast p1, Lx1/u;

    iget-wide v0, p1, Lx1/u;->a:J

    iget-wide v2, p0, Lx1/u;->a:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lx1/u;->a:J

    check-cast p1, Lx1/u;

    iget-wide v2, p1, Lx1/u;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lx1/u;->a:J

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v1, v0

    xor-int v0, v2, v1

    return v0
.end method

.method public final x()Z
    .locals 5

    iget-wide v0, p0, Lx1/u;->a:J

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()I
    .locals 2

    iget-wide v0, p0, Lx1/u;->a:J

    long-to-int v1, v0

    return v1
.end method
