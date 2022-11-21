.class public final Lcom/android/dx/dex/file/StringIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "SourceFile"


# instance fields
.field private final strings:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lx1/d0;",
            "Lcom/android/dx/dex/file/StringIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    const-string v0, "string_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->throwIfNotPrepared()V

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    check-cast p1, Lx1/d0;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lx1/d0;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->throwIfNotPrepared()V

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/StringIdItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized intern(Lcom/android/dx/dex/file/StringIdItem;)Lcom/android/dx/dex/file/StringIdItem;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->throwIfPrepared()V

    invoke-virtual {p1}, Lcom/android/dx/dex/file/StringIdItem;->getValue()Lx1/d0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/StringIdItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public intern(Ljava/lang/String;)Lcom/android/dx/dex/file/StringIdItem;
    .locals 2

    new-instance v0, Lcom/android/dx/dex/file/StringIdItem;

    new-instance v1, Lx1/d0;

    invoke-direct {v1, p1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/StringIdItem;-><init>(Lx1/d0;)V

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/dex/file/StringIdItem;)Lcom/android/dx/dex/file/StringIdItem;

    move-result-object p1

    return-object p1
.end method

.method public intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;
    .locals 1

    new-instance v0, Lcom/android/dx/dex/file/StringIdItem;

    invoke-direct {v0, p1}, Lcom/android/dx/dex/file/StringIdItem;-><init>(Lx1/d0;)V

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/dex/file/StringIdItem;)Lcom/android/dx/dex/file/StringIdItem;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized intern(Lx1/a0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;

    invoke-virtual {p1}, Lx1/a0;->n()Lx1/d0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public orderItems()V
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/StringIdItem;

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/IndexedItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeHeaderPart(Lb2/a;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->throwIfNotPrepared()V

    iget-object v0, p0, Lcom/android/dx/dex/file/StringIdsSection;->strings:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Lb2/a;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string_ids_size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string_ids_off:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lb2/q;->writeInt(I)V

    invoke-interface {p1, v1}, Lb2/q;->writeInt(I)V

    return-void
.end method
