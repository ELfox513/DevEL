.class public final Lcom/esotericsoftware/kryo/util/DefaultGenerics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Generics;


# instance fields
.field public final a:Lcom/esotericsoftware/kryo/Kryo;

.field public b:I

.field public c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

.field public d:[I

.field public e:I

.field public f:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->d:[I

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->a:Lcom/esotericsoftware/kryo/Kryo;

    return-void
.end method


# virtual methods
.method public getGenericTypesSize()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->b:I

    return v0
.end method

.method public nextGenericClass()Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aget-object v2, v2, v0

    iget-object v3, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->b:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->d:[I

    aget v0, v3, v0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->a:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->b:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    iget-object v0, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->b:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public popGenericType()V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->d:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->a:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->b:I

    return-void
.end method

.method public popTypeVariables(I)V
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    sub-int p1, v0, p1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->b:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v3, v2

    if-ne v1, v3, :cond_0

    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->d:[I

    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->d:[I

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->b:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->c:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->d:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->a:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method public pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I
    .locals 10

    iget v0, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->b:I

    array-length v3, p2

    if-le v2, v3, :cond_0

    goto :goto_3

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    array-length v4, v3

    if-le v0, v4, :cond_1

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    :cond_1
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->c:[I

    iget-object p1, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->d:[Ljava/lang/reflect/TypeVariable;

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v5, p2, v1

    invoke-virtual {v5, p0}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    aget v6, v0, v1

    add-int/2addr v6, v4

    :goto_1
    if-ge v4, v6, :cond_3

    iget-object v7, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    iget v8, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    aget-object v9, p1, v4

    aput-object v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    aput-object v5, v7, v9

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    sub-int/2addr p1, v2

    return p1

    :cond_5
    :goto_3
    return v1
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->e:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->f:[Ljava/lang/reflect/Type;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
