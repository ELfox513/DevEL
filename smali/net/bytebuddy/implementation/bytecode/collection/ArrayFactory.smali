.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/collection/CollectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;,
        Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final arrayCreator:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

.field private final componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final sizeDecrease:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->arrayCreator:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->sizeDecrease:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->arrayCreator:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->sizeDecrease:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p0
.end method

.method public static forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->makeArrayCreatorFor(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;)V

    return-object v0
.end method

.method private static makeArrayCreatorFor(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForReferenceType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->BYTE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->SHORT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->INTEGER:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->LONG:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->FLOAT:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator$ForPrimitiveType;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create array of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->arrayCreator:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->arrayCreator:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->arrayCreator:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;Ljava/util/List;)V

    return-object v0
.end method
