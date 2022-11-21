.class public final Lr4/p24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:Z

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lr4/p24;->a:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/p24;->b:Z

    iput v0, p0, Lr4/p24;->c:I

    return-void
.end method

.method public final b(Lr4/b04;)V
    .locals 4

    iget-boolean v0, p0, Lr4/p24;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/p24;->a:[B

    move-object v1, p1

    check-cast v1, Lr4/vz3;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v3}, Lr4/vz3;->i([BIIZ)Z

    invoke-interface {p1}, Lr4/b04;->k()V

    iget-object p1, p0, Lr4/p24;->a:[B

    sget-object v0, Lr4/gz3;->a:[I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xfe

    const/16 v0, 0xba

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/p24;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lr4/o24;JIII)V
    .locals 2

    iget-boolean v0, p0, Lr4/p24;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lr4/p24;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lr4/p24;->c:I

    if-nez v0, :cond_1

    iput-wide p2, p0, Lr4/p24;->d:J

    iput p4, p0, Lr4/p24;->e:I

    const/4 p2, 0x0

    iput p2, p0, Lr4/p24;->f:I

    :cond_1
    iget p2, p0, Lr4/p24;->f:I

    add-int/2addr p2, p5

    iput p2, p0, Lr4/p24;->f:I

    iput p6, p0, Lr4/p24;->g:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_2

    invoke-virtual {p0, p1}, Lr4/p24;->d(Lr4/o24;)V

    :cond_2
    return-void
.end method

.method public final d(Lr4/o24;)V
    .locals 8

    iget v0, p0, Lr4/p24;->c:I

    if-lez v0, :cond_0

    iget-object v1, p1, Lr4/o24;->X:Lr4/d14;

    iget-wide v2, p0, Lr4/p24;->d:J

    iget v4, p0, Lr4/p24;->e:I

    iget v5, p0, Lr4/p24;->f:I

    iget v6, p0, Lr4/p24;->g:I

    iget-object v7, p1, Lr4/o24;->j:Lr4/c14;

    invoke-interface/range {v1 .. v7}, Lr4/d14;->e(JIIILr4/c14;)V

    const/4 p1, 0x0

    iput p1, p0, Lr4/p24;->c:I

    :cond_0
    return-void
.end method
