.class public final Lz4/j;
.super Lz4/l;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic d:Lz4/i;


# direct methods
.method public constructor <init>(Lz4/i;)V
    .locals 1

    iput-object p1, p0, Lz4/j;->d:Lz4/i;

    invoke-direct {p0}, Lz4/l;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz4/j;->a:I

    invoke-virtual {p1}, Lz4/i;->size()I

    move-result p1

    iput p1, p0, Lz4/j;->b:I

    return-void
.end method


# virtual methods
.method public final d()B
    .locals 2

    iget v0, p0, Lz4/j;->a:I

    iget v1, p0, Lz4/j;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz4/j;->a:I

    iget-object v1, p0, Lz4/j;->d:Lz4/i;

    invoke-virtual {v1, v0}, Lz4/i;->u(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lz4/j;->a:I

    iget v1, p0, Lz4/j;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
