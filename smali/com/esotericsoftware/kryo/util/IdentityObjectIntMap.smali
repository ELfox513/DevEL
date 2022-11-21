.class public Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;
.super Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->a:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    return p2

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->b:[I

    aget p1, p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->b:[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public place(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int/2addr p1, v0

    return p1
.end method
