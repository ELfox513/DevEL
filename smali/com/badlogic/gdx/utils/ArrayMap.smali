.class public Lcom/badlogic/gdx/utils/ArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ArrayMap$Keys;,
        Lcom/badlogic/gdx/utils/ArrayMap$Values;,
        Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public transient a:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public transient b:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public transient d:Lcom/badlogic/gdx/utils/ArrayMap$Values;

.field public transient k:Lcom/badlogic/gdx/utils/ArrayMap$Values;

.field public keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public ordered:Z

.field public transient p:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public transient q:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public size:I

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 4

    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-static {p4, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return-void
.end method

.method public clear(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p1, :cond_1

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    aget-object v1, v0, v1

    if-ne v1, p1, :cond_0

    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    add-int/lit8 p2, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, p2

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v1, :cond_4

    add-int/lit8 p2, v1, -0x1

    aget-object v1, v0, v1

    if-ne v1, p1, :cond_3

    return v2

    :cond_3
    move v1, p2

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->a:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->a:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->b:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->a:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->b:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v3, v1, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->b:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v3, v1, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->d:I

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->k:Z

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    aget-object v7, v4, v5

    if-nez v7, :cond_3

    sget-object v7, Lcom/badlogic/gdx/utils/ObjectMap;->x:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    return v2

    :cond_3
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v4, v5

    aget-object v7, v1, v5

    sget-object v8, Lcom/badlogic/gdx/utils/ObjectMap;->x:Ljava/lang/Object;

    invoke-virtual {p1, v7, v8}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public firstValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    if-nez p1, :cond_1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v2, v0, v1

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v1, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public getKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    aget-object p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v1, :cond_4

    aget-object p2, v0, v1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object p1, p1, v1

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    aget-object v6, v1, v3

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_0
    if-ge v1, p2, :cond_4

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_2
    if-ge v1, p2, :cond_4

    aget-object v2, v0, v1

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt p1, v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget-object p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ArrayMap$Keys;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Keys<",
            "TK;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->p:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->p:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->q:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->p:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->b:I

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->d:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->q:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v3, v1, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->d:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->q:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v3, v1, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->b:I

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->d:Z

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->d:Z

    return-object v1
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v1, p3, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v0, p3

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, p3

    iget p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return p3
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V

    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "+TK;+TV;>;II)V"
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    aget-object v2, v1, v0

    aput-object v2, v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v2, p1

    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v0, 0x0

    aput-object v0, v1, p1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_4

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method public reverse()V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v1, v2

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v5, v4, v2

    aget-object v6, v4, v3

    aput-object v6, v4, v2

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v5, v4, v2

    aget-object v6, v4, v3

    aput-object v6, v4, v2

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public shrink()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->d(I)V

    return-void
.end method

.method public shuffle()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aget-object v4, v2, v1

    aput-object v4, v2, v0

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aget-object v4, v2, v1

    aput-object v4, v2, v0

    aput-object v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x1

    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v3, v5, :cond_1

    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(I)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    move v0, p1

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    return-void
.end method

.method public values()Lcom/badlogic/gdx/utils/ArrayMap$Values;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Values<",
            "TV;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->d:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->d:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->k:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->d:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput v3, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->k:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v3, v1, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->k:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v3, v1, Lcom/badlogic/gdx/utils/ArrayMap$Values;->b:I

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->d:Z

    return-object v1
.end method
