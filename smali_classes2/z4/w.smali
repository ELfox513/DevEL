.class public final Lz4/w;
.super Lz4/u;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz4/u;-><init>(Lz4/v;)V

    const v0, 0x7fffffff

    iput v0, p0, Lz4/w;->j:I

    iput-object p1, p0, Lz4/w;->d:[B

    add-int/2addr p3, p2

    iput p3, p0, Lz4/w;->f:I

    iput p2, p0, Lz4/w;->h:I

    iput p2, p0, Lz4/w;->i:I

    iput-boolean p4, p0, Lz4/w;->e:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLz4/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz4/w;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget v0, p0, Lz4/w;->h:I

    iget v1, p0, Lz4/w;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(I)I
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lz4/u;->b()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lz4/w;->j:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lz4/w;->j:I

    iget v1, p0, Lz4/w;->f:I

    iget v2, p0, Lz4/w;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lz4/w;->f:I

    iget v2, p0, Lz4/w;->i:I

    sub-int v2, v1, v2

    if-le v2, p1, :cond_0

    sub-int/2addr v2, p1

    iput v2, p0, Lz4/w;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lz4/w;->f:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lz4/w;->g:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lz4/r0;->a()Lz4/r0;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lz4/r0;->b()Lz4/r0;

    move-result-object p1

    throw p1
.end method
