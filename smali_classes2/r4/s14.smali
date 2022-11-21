.class public final Lr4/s14;
.super Lr4/x14;
.source "SourceFile"


# static fields
.field public static final e:[I


# instance fields
.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lr4/s14;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lr4/d14;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/x14;-><init>(Lr4/d14;)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/xb;)Z
    .locals 3

    iget-boolean v0, p0, Lr4/s14;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lr4/s14;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lr4/s14;->e:[I

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v2}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0, v1}, Lr4/c5;->B(I)Lr4/c5;

    invoke-virtual {v0, p1}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iget-object v0, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {v0, p1}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean v1, p0, Lr4/s14;->c:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lr4/w14;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Audio format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lr4/w14;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    :goto_1
    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    invoke-virtual {v0, p1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0, v1}, Lr4/c5;->B(I)Lr4/c5;

    const/16 p1, 0x1f40

    invoke-virtual {v0, p1}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iget-object v0, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {v0, p1}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean v1, p0, Lr4/s14;->c:Z

    :goto_2
    iput-boolean v1, p0, Lr4/s14;->b:Z

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Lr4/xb;->s(I)V

    :goto_3
    return v1
.end method

.method public final b(Lr4/xb;J)Z
    .locals 12

    iget v0, p0, Lr4/s14;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v7

    iget-object v0, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {v0, p1, v7}, Lr4/d14;->a(Lr4/xb;I)V

    iget-object v3, p0, Lr4/x14;->a:Lr4/d14;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p2

    invoke-interface/range {v3 .. v9}, Lr4/d14;->e(JIIILr4/c14;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lr4/s14;->c:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result p2

    new-array p3, p2, [B

    invoke-virtual {p1, p3, v2, p2}, Lr4/xb;->u([BII)V

    invoke-static {p3}, Lr4/cz3;->a([B)Lr4/az3;

    move-result-object p1

    new-instance p2, Lr4/c5;

    invoke-direct {p2}, Lr4/c5;-><init>()V

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p2, v0}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    iget-object v0, p1, Lr4/az3;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lr4/c5;->k(Ljava/lang/String;)Lr4/c5;

    iget v0, p1, Lr4/az3;->b:I

    invoke-virtual {p2, v0}, Lr4/c5;->B(I)Lr4/c5;

    iget p1, p1, Lr4/az3;->a:I

    invoke-virtual {p2, p1}, Lr4/c5;->C(I)Lr4/c5;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {p2}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iget-object p2, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {p2, p1}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean v1, p0, Lr4/s14;->c:Z

    return v2

    :cond_2
    :goto_0
    iget v3, p0, Lr4/s14;->d:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v9

    iget-object v0, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {v0, p1, v9}, Lr4/d14;->a(Lr4/xb;I)V

    iget-object v5, p0, Lr4/x14;->a:Lr4/d14;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, p2

    invoke-interface/range {v5 .. v11}, Lr4/d14;->e(JIIILr4/c14;)V

    return v1
.end method
