.class public Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Simple;
.super Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-void
.end method


# virtual methods
.method public argument(I)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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

    move-result-object p1

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCopyingArguments()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public variable(I)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->exitType:Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->namedTypes:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default;->enterType:Lnet/bytebuddy/description/type/TypeDefinition;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method
