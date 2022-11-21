.class public final Lz4/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:Ljava/util/Iterator;

.field public final synthetic d:Lz4/i2;


# direct methods
.method public constructor <init>(Lz4/i2;)V
    .locals 0

    iput-object p1, p0, Lz4/k2;->d:Lz4/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz4/i2;->i(Lz4/i2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lz4/k2;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lz4/i2;Lz4/j2;)V
    .locals 0

    invoke-direct {p0, p1}, Lz4/k2;-><init>(Lz4/i2;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lz4/k2;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/k2;->d:Lz4/i2;

    invoke-static {v0}, Lz4/i2;->l(Lz4/i2;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lz4/k2;->b:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lz4/k2;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lz4/k2;->a:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lz4/k2;->d:Lz4/i2;

    invoke-static {v1}, Lz4/i2;->i(Lz4/i2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lz4/k2;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lz4/k2;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz4/k2;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    iget-object v0, p0, Lz4/k2;->d:Lz4/i2;

    invoke-static {v0}, Lz4/i2;->i(Lz4/i2;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lz4/k2;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lz4/k2;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
