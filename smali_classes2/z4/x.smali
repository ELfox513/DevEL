.class public abstract Lz4/x;
.super Lz4/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/x$a;,
        Lz4/x$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lz4/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz4/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lz4/x;->b:Ljava/util/logging/Logger;

    invoke-static {}, Lz4/d3;->r()Z

    move-result v0

    sput-boolean v0, Lz4/x;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz4/h;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz4/y;)V
    .locals 0

    invoke-direct {p0}, Lz4/x;-><init>()V

    return-void
.end method

.method public static A(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static A0(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static B(ID)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static B0(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static C(IF)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static D(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1}, Lz4/x;->t0(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static E(ILz4/y0;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lz4/x;->q(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lz4/x;->l0(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lz4/x;->b(ILz4/y0;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static F(ILz4/r1;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lz4/x;->q(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lz4/x;->l0(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1}, Lz4/x;->R(Lz4/r1;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static G(ILz4/r1;Lz4/f2;)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1, p2}, Lz4/x;->d(Lz4/r1;Lz4/f2;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static H(Lz4/i;)I
    .locals 1

    invoke-virtual {p0}, Lz4/i;->size()I

    move-result p0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static I([B)Lz4/x;
    .locals 3

    array-length v0, p0

    new-instance v1, Lz4/x$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lz4/x$a;-><init>([BII)V

    return-object v1
.end method

.method public static O(ILz4/i;)I
    .locals 1

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-virtual {p1}, Lz4/i;->size()I

    move-result p1

    invoke-static {p1}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static P(ILz4/r1;Lz4/f2;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lz4/c;

    invoke-virtual {p1}, Lz4/c;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lz4/f2;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lz4/c;->j(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static Q(IZ)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static R(Lz4/r1;)I
    .locals 1

    invoke-interface {p0}, Lz4/r1;->h()I

    move-result p0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static S([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic Z()Z
    .locals 1

    sget-boolean v0, Lz4/x;->c:Z

    return v0
.end method

.method public static a0(IJ)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1, p2}, Lz4/x;->x0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILz4/y0;)I
    .locals 1

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-virtual {p1}, Lz4/y0;->b()I

    move-result p1

    invoke-static {p1}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static b0(ILz4/i;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lz4/x;->q(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lz4/x;->l0(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lz4/x;->O(ILz4/i;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c(Lz4/y0;)I
    .locals 1

    invoke-virtual {p0}, Lz4/y0;->b()I

    move-result p0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c0(Lz4/r1;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lz4/r1;->h()I

    move-result p0

    return p0
.end method

.method public static d(Lz4/r1;Lz4/f2;)I
    .locals 2

    check-cast p0, Lz4/c;

    invoke-virtual {p0}, Lz4/c;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lz4/f2;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz4/c;->j(I)V

    :cond_0
    invoke-static {v0}, Lz4/x;->s(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static d0(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static f0(IJ)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1, p2}, Lz4/x;->x0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h0(IJ)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1, p2}, Lz4/x;->B0(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lz4/x;->x0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j0(II)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1}, Lz4/x;->r(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k0(IJ)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static l0(II)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1}, Lz4/x;->s(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static m0(IJ)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static n0(II)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1}, Lz4/x;->x(I)I

    move-result p1

    invoke-static {p1}, Lz4/x;->s(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o0(II)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static p0(II)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static q(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result p0

    return p0
.end method

.method public static q0(II)I
    .locals 0

    invoke-static {p0}, Lz4/x;->q(I)I

    move-result p0

    invoke-static {p1}, Lz4/x;->r(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static r(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static s(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static t(I)I
    .locals 0

    invoke-static {p0}, Lz4/x;->x(I)I

    move-result p0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result p0

    return p0
.end method

.method public static t0(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lz4/f3;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lz4/i3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lz4/o0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lz4/x;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static u(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static v(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static w(I)I
    .locals 0

    invoke-static {p0}, Lz4/x;->r(I)I

    move-result p0

    return p0
.end method

.method public static w0(J)I
    .locals 0

    invoke-static {p0, p1}, Lz4/x;->x0(J)I

    move-result p0

    return p0
.end method

.method public static x(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static x0(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static y(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result p0

    return p0
.end method

.method public static y0(J)I
    .locals 0

    invoke-static {p0, p1}, Lz4/x;->B0(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->x0(J)I

    move-result p0

    return p0
.end method

.method public static z(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static z0(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method


# virtual methods
.method public abstract C0(I)V
.end method

.method public abstract D0(I)V
.end method

.method public final E0(I)V
    .locals 0

    invoke-static {p1}, Lz4/x;->x(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lz4/x;->D0(I)V

    return-void
.end method

.method public abstract J(II)V
.end method

.method public final K(IJ)V
    .locals 0

    invoke-static {p2, p3}, Lz4/x;->B0(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lz4/x;->i(IJ)V

    return-void
.end method

.method public abstract L(ILz4/i;)V
.end method

.method public abstract M(IZ)V
.end method

.method public abstract N(Lz4/r1;)V
.end method

.method public abstract T(B)V
.end method

.method public abstract U(II)V
.end method

.method public abstract V(IJ)V
.end method

.method public final W(Z)V
    .locals 0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lz4/x;->T(B)V

    return-void
.end method

.method public abstract X()I
.end method

.method public final Y()V
    .locals 2

    invoke-virtual {p0}, Lz4/x;->X()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lz4/x;->v0(J)V

    return-void
.end method

.method public abstract e0(II)V
.end method

.method public final f(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lz4/x;->p(I)V

    return-void
.end method

.method public final g(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lz4/x;->V(IJ)V

    return-void
.end method

.method public final g0(II)V
    .locals 0

    invoke-static {p2}, Lz4/x;->x(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lz4/x;->e0(II)V

    return-void
.end method

.method public final h(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lz4/x;->i0(II)V

    return-void
.end method

.method public abstract i(IJ)V
.end method

.method public abstract i0(II)V
.end method

.method public abstract j(ILjava/lang/String;)V
.end method

.method public abstract k(ILz4/i;)V
.end method

.method public abstract l(ILz4/r1;)V
.end method

.method public abstract m(ILz4/r1;Lz4/f2;)V
.end method

.method public final n(Ljava/lang/String;Lz4/i3;)V
    .locals 6

    sget-object v0, Lz4/x;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lz4/o0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lz4/x;->D0(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lz4/h;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz4/x$b; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lz4/x$b;

    invoke-direct {p2, p1}, Lz4/x$b;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract o(Lz4/i;)V
.end method

.method public abstract p(I)V
.end method

.method public abstract r0(J)V
.end method

.method public abstract s0(Ljava/lang/String;)V
.end method

.method public final u0(J)V
    .locals 0

    invoke-static {p1, p2}, Lz4/x;->B0(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lz4/x;->r0(J)V

    return-void
.end method

.method public abstract v0(J)V
.end method
