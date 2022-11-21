.class public abstract Lx1/t;
.super Lx1/v;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lx1/v;-><init>()V

    iput p1, p0, Lx1/t;->a:I

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget v0, p0, Lx1/t;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public d(Lx1/a;)I
    .locals 1

    check-cast p1, Lx1/t;

    iget p1, p1, Lx1/t;->a:I

    iget v0, p0, Lx1/t;->a:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lx1/t;->a:I

    check-cast p1, Lx1/t;

    iget p1, p1, Lx1/t;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lx1/t;->a:I

    return v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lx1/t;->a:I

    return v0
.end method
