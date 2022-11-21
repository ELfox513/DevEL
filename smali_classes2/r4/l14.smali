.class public final Lr4/l14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final n:Lr4/g04;

.field public static final o:[I

.field public static final p:[I

.field public static final q:[B

.field public static final r:[B

.field public static final s:I


# instance fields
.field public final a:[B

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:J

.field public j:Lr4/d04;

.field public k:Lr4/d14;

.field public l:Lr4/z04;

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lr4/k14;->a:Lr4/g04;

    sput-object v0, Lr4/l14;->n:Lr4/g04;

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lr4/l14;->o:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lr4/l14;->p:[I

    const-string v1, "#!AMR\n"

    invoke-static {v1}, Lr4/lc;->X(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lr4/l14;->q:[B

    const-string v1, "#!AMR-WB\n"

    invoke-static {v1}, Lr4/lc;->X(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lr4/l14;->r:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lr4/l14;->s:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/l14;->a:[B

    const/4 p1, -0x1

    iput p1, p0, Lr4/l14;->g:I

    return-void
.end method

.method public static b(Lr4/b04;[B)Z
    .locals 3

    invoke-interface {p0}, Lr4/b04;->k()V

    array-length v0, p1

    new-array v1, v0, [B

    check-cast p0, Lr4/vz3;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lr4/vz3;->i([BIIZ)Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lr4/b04;)Z
    .locals 4

    sget-object v0, Lr4/l14;->q:[B

    invoke-static {p1, v0}, Lr4/l14;->b(Lr4/b04;[B)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lr4/l14;->b:Z

    array-length v0, v0

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v0, v3}, Lr4/vz3;->n(IZ)Z

    return v2

    :cond_0
    sget-object v0, Lr4/l14;->r:[B

    invoke-static {p1, v0}, Lr4/l14;->b(Lr4/b04;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lr4/l14;->b:Z

    array-length v0, v0

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v0, v3}, Lr4/vz3;->n(IZ)Z

    return v2

    :cond_1
    return v3
.end method

.method public final c(Lr4/b04;)I
    .locals 11

    iget v0, p0, Lr4/l14;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    :try_start_0
    invoke-interface {p1}, Lr4/b04;->k()V

    iget-object v0, p0, Lr4/l14;->a:[B

    move-object v4, p1

    check-cast v4, Lr4/vz3;

    invoke-virtual {v4, v0, v3, v2, v3}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/l14;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v4, v0, 0x83

    const/4 v5, 0x0

    if-gtz v4, :cond_6

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    iget-boolean v4, p0, Lr4/l14;->b:Z

    if-eqz v4, :cond_0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    const/16 v6, 0xd

    if-le v0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_4

    const/16 v6, 0xc

    if-lt v0, v6, :cond_1

    const/16 v6, 0xe

    if-gt v0, v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    sget-object v4, Lr4/l14;->p:[I

    aget v0, v4, v0

    goto :goto_1

    :cond_2
    sget-object v4, Lr4/l14;->o:[I

    aget v0, v4, v0

    :goto_1
    iput v0, p0, Lr4/l14;->d:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lr4/l14;->e:I

    iget v4, p0, Lr4/l14;->g:I

    if-ne v4, v1, :cond_3

    iput v0, p0, Lr4/l14;->g:I

    move v4, v0

    :cond_3
    if-ne v4, v0, :cond_7

    iget v4, p0, Lr4/l14;->h:I

    add-int/2addr v4, v2

    iput v4, p0, Lr4/l14;->h:I

    goto :goto_3

    :cond_4
    :goto_2
    :try_start_1
    const-string p1, "WB"

    const-string v3, "NB"

    if-eq v2, v4, :cond_5

    move-object p1, v3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal AMR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frame type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid padding bits for frame header "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    :cond_7
    :goto_3
    iget-object v4, p0, Lr4/l14;->k:Lr4/d14;

    invoke-static {v4, p1, v0, v2}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result p1

    if-ne p1, v1, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lr4/l14;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lr4/l14;->e:I

    if-lez v0, :cond_9

    return v3

    :cond_9
    iget-object v4, p0, Lr4/l14;->k:Lr4/d14;

    iget-wide v5, p0, Lr4/l14;->c:J

    const/4 v7, 0x1

    iget v8, p0, Lr4/l14;->d:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lr4/d14;->e(JIIILr4/c14;)V

    iget-wide v0, p0, Lr4/l14;->c:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lr4/l14;->c:J

    return v3
.end method

.method public final e(Lr4/b04;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lr4/l14;->a(Lr4/b04;)Z

    move-result p1

    return p1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 6

    iget-object p2, p0, Lr4/l14;->k:Lr4/d14;

    invoke-static {p2}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Lr4/lc;->a:I

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lr4/l14;->a(Lr4/b04;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Could not find AMR header."

    invoke-static {p2, p1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lr4/l14;->m:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iput-boolean v0, p0, Lr4/l14;->m:Z

    iget-boolean p2, p0, Lr4/l14;->b:Z

    if-eq v0, p2, :cond_2

    const-string v1, "audio/3gpp"

    goto :goto_1

    :cond_2
    const-string v1, "audio/amr-wb"

    :goto_1
    if-eq v0, p2, :cond_3

    const/16 p2, 0x1f40

    goto :goto_2

    :cond_3
    const/16 p2, 0x3e80

    :goto_2
    iget-object v4, p0, Lr4/l14;->k:Lr4/d14;

    new-instance v5, Lr4/c5;

    invoke-direct {v5}, Lr4/c5;-><init>()V

    invoke-virtual {v5, v1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    sget v1, Lr4/l14;->s:I

    invoke-virtual {v5, v1}, Lr4/c5;->o(I)Lr4/c5;

    invoke-virtual {v5, v0}, Lr4/c5;->B(I)Lr4/c5;

    invoke-virtual {v5, p2}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v5}, Lr4/c5;->I()Lr4/e5;

    move-result-object p2

    invoke-interface {v4, p2}, Lr4/d14;->f(Lr4/e5;)V

    :cond_4
    invoke-virtual {p0, p1}, Lr4/l14;->c(Lr4/b04;)I

    move-result p1

    iget-boolean p2, p0, Lr4/l14;->f:Z

    if-eqz p2, :cond_5

    return p1

    :cond_5
    new-instance p2, Lr4/y04;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v4, v5, v2, v3}, Lr4/y04;-><init>(JJ)V

    iput-object p2, p0, Lr4/l14;->l:Lr4/z04;

    iget-object v1, p0, Lr4/l14;->j:Lr4/d04;

    invoke-interface {v1, p2}, Lr4/d04;->j(Lr4/z04;)V

    iput-boolean v0, p0, Lr4/l14;->f:Z

    return p1
.end method

.method public final h(Lr4/d04;)V
    .locals 2

    iput-object p1, p0, Lr4/l14;->j:Lr4/d04;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    iput-object v0, p0, Lr4/l14;->k:Lr4/d14;

    invoke-interface {p1}, Lr4/d04;->y()V

    return-void
.end method

.method public final i(JJ)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/l14;->c:J

    const/4 p3, 0x0

    iput p3, p0, Lr4/l14;->d:I

    iput p3, p0, Lr4/l14;->e:I

    iput-wide p1, p0, Lr4/l14;->i:J

    return-void
.end method
