.class public final Lo7/s1$c;
.super Lo7/s1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lo7/s1$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;J)Z
    .locals 1

    sget-boolean v0, Lo7/s1;->w:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lo7/s1;->e(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lo7/s1;->f(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;J)B
    .locals 1

    sget-boolean v0, Lo7/s1;->w:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lo7/s1;->a(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lo7/s1;->b(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;J)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lo7/s1$e;->h(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public f(Ljava/lang/Object;J)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lo7/s1$e;->g(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/Object;JZ)V
    .locals 1

    sget-boolean v0, Lo7/s1;->w:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lo7/s1;->g(Ljava/lang/Object;JZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lo7/s1;->h(Ljava/lang/Object;JZ)V

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/Object;JB)V
    .locals 1

    sget-boolean v0, Lo7/s1;->w:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lo7/s1;->c(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lo7/s1;->d(Ljava/lang/Object;JB)V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lo7/s1$e;->p(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public n(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lo7/s1$e;->o(Ljava/lang/Object;JI)V

    return-void
.end method
