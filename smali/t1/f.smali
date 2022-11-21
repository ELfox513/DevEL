.class public abstract Lt1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt1/j;

.field public final b:I

.field public final c:I

.field public final d:Ls1/b;

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(Lt1/j;IILs1/b;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p2}, Ls1/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lt1/f;->a:Lt1/j;

    iput p2, p0, Lt1/f;->b:I

    iput p3, p0, Lt1/f;->c:I

    iput-object p4, p0, Lt1/f;->d:Ls1/b;

    iput p5, p0, Lt1/f;->e:I

    iput-wide p6, p0, Lt1/f;->f:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lt1/d;)Lt1/f;
    .locals 2

    invoke-interface {p0}, Lt1/d;->read()I

    move-result v0

    invoke-static {v0}, Ls1/d;->a(I)I

    move-result v1

    invoke-static {v1}, Ls1/c;->b(I)Lt1/j;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lt1/j;->O(ILt1/d;)Lt1/f;

    move-result-object p0

    return-object p0
.end method

.method public static b([S)[Lt1/f;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lt1/f;

    new-instance v1, Lt1/p;

    invoke-direct {v1, p0}, Lt1/p;-><init>([S)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lt1/p;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lt1/b;->k()I

    move-result p0

    invoke-static {v1}, Lt1/f;->a(Lt1/d;)Lt1/f;

    move-result-object v2

    aput-object v2, v0, p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lk1/g;

    invoke-direct {v0, p0}, Lk1/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final A(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lt1/f;->z(I)I

    move-result p1

    int-to-byte v0, p1

    if-ne p1, v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B(I)S
    .locals 3

    invoke-virtual {p0, p1}, Lt1/f;->z(I)I

    move-result p1

    int-to-short v0, p1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract C(I)Lt1/f;
.end method

.method public D(II)Lt1/f;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lt1/e;)V
    .locals 1

    iget-object v0, p0, Lt1/f;->a:Lt1/j;

    invoke-virtual {v0, p0, p1}, Lt1/j;->R(Lt1/f;Lt1/e;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()S
    .locals 5

    invoke-virtual {p0}, Lt1/f;->d()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v1, Lk1/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register A out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    invoke-static {v3, v4}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()S
    .locals 5

    invoke-virtual {p0}, Lt1/f;->f()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v1, Lk1/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register B out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    invoke-static {v3, v4}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()S
    .locals 5

    invoke-virtual {p0}, Lt1/f;->h()I

    move-result v0

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v1, Lk1/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register C out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    invoke-static {v3, v4}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Lt1/j;
    .locals 1

    iget-object v0, p0, Lt1/f;->a:Lt1/j;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lt1/f;->c:I

    return v0
.end method

.method public final n()Ls1/b;
    .locals 1

    iget-object v0, p0, Lt1/f;->d:Ls1/b;

    return-object v0
.end method

.method public final o()S
    .locals 1

    iget v0, p0, Lt1/f;->c:I

    int-to-short v0, v0

    return v0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lt1/f;->f:J

    return-wide v0
.end method

.method public final q()I
    .locals 5

    iget-wide v0, p0, Lt1/f;->f:J

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    return v0

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lt1/f;->f:J

    invoke-static {v2, v3}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()I
    .locals 5

    iget-wide v0, p0, Lt1/f;->f:J

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int v1, v0

    return v1

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lt1/f;->f:J

    invoke-static {v2, v3}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()I
    .locals 5

    iget-wide v0, p0, Lt1/f;->f:J

    const-wide/16 v2, -0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x7

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0xf

    return v0

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lt1/f;->f:J

    invoke-static {v2, v3}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()S
    .locals 5

    iget-wide v0, p0, Lt1/f;->f:J

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lt1/f;->f:J

    invoke-static {v2, v3}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lt1/f;->b:I

    return v0
.end method

.method public final v()S
    .locals 1

    iget v0, p0, Lt1/f;->b:I

    int-to-short v0, v0

    return v0
.end method

.method public w()S
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract x()I
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lt1/f;->e:I

    return v0
.end method

.method public final z(I)I
    .locals 1

    iget v0, p0, Lt1/f;->e:I

    sub-int/2addr v0, p1

    return v0
.end method
