.class public final Lcom/android/dx/dex/code/StdCatchBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/dex/code/CatchBuilder;


# static fields
.field private static final MAX_CATCH_RANGE:I = 0xffff


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final method:Lw1/u;

.field private final order:[I


# direct methods
.method public constructor <init>(Lw1/u;[ILcom/android/dx/dex/code/BlockAddresses;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lw1/u;

    iput-object p2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    iput-object p3, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static build(Lw1/u;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;
    .locals 10

    array-length v0, p1

    invoke-virtual {p0}, Lw1/u;->b()Lw1/c;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_4

    aget v7, p1, v6

    invoke-virtual {p0, v7}, Lw1/c;->L(I)Lw1/b;

    move-result-object v7

    invoke-virtual {v7}, Lw1/b;->b()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v7, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lw1/b;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v8

    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, Lb2/f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4, v7, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lw1/b;Lw1/b;Lcom/android/dx/dex/code/BlockAddresses;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v5, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v4, v5, v2, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lw1/b;Lw1/b;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    move-object v4, v7

    move-object v5, v4

    move-object v2, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lb2/f;->size()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v4, v5, v2, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lw1/b;Lw1/b;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    return-object p0

    :cond_6
    new-instance p1, Lcom/android/dx/dex/code/CatchTable;

    invoke-direct {p1, p0}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    :goto_3
    if-ge v3, p0, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p1, v3, p2}, Lcom/android/dx/dex/code/CatchTable;->set(ILcom/android/dx/dex/code/CatchTable$Entry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lb2/o;->setImmutable()V

    return-object p1
.end method

.method private static handlersFor(Lw1/b;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;
    .locals 6

    invoke-virtual {p0}, Lw1/b;->h()Lb2/j;

    move-result-object v0

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v1

    invoke-virtual {p0}, Lw1/b;->f()I

    move-result v2

    invoke-virtual {p0}, Lw1/b;->e()Lw1/h;

    move-result-object p0

    invoke-virtual {p0}, Lw1/h;->e()Ly1/e;

    move-result-object p0

    invoke-interface {p0}, Ly1/e;->size()I

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    return-object p0

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eq v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3}, Lb2/j;->B(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen: weird successors list"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-interface {p0, v2}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v4

    sget-object v5, Ly1/c;->K:Ly1/c;

    invoke-virtual {v4, v5}, Ly1/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-direct {v2, v3}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_6

    new-instance v4, Lx1/e0;

    invoke-interface {p0, v1}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lx1/e0;-><init>(Ly1/c;)V

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/dx/dex/code/CatchHandlerList;->set(ILx1/e0;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    return-object v2
.end method

.method private static makeEntry(Lw1/b;Lw1/b;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;
    .locals 0

    invoke-virtual {p3, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object p0

    invoke-virtual {p3, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object p1

    new-instance p3, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Lcom/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/android/dx/dex/code/CatchHandlerList;)V

    return-object p3
.end method

.method private static rangeIsValid(Lw1/b;Lw1/b;Lcom/android/dx/dex/code/BlockAddresses;)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result p0

    invoke-virtual {p2, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result p1

    sub-int/2addr p1, p0

    const p0, 0xffff

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "end == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "start == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/android/dx/dex/code/CatchTable;
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lw1/u;

    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    iget-object v2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-static {v0, v1, v2}, Lcom/android/dx/dex/code/StdCatchBuilder;->build(Lw1/u;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;

    move-result-object v0

    return-object v0
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ly1/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lw1/u;

    invoke-virtual {v1}, Lw1/u;->b()Lw1/c;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lw1/c;->F(I)Lw1/b;

    move-result-object v5

    invoke-virtual {v5}, Lw1/b;->e()Lw1/h;

    move-result-object v5

    invoke-virtual {v5}, Lw1/h;->e()Ly1/e;

    move-result-object v5

    invoke-interface {v5}, Ly1/e;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-interface {v5, v7}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasAnyCatches()Z
    .locals 5

    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lw1/u;

    invoke-virtual {v0}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lw1/c;->F(I)Lw1/b;

    move-result-object v4

    invoke-virtual {v4}, Lw1/b;->e()Lw1/h;

    move-result-object v4

    invoke-virtual {v4}, Lw1/h;->e()Ly1/e;

    move-result-object v4

    invoke-interface {v4}, Ly1/e;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
