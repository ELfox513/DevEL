.class public abstract Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;
.super Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# instance fields
.field private transient synthetic hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/method/ParameterDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/method/ParameterDescription$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;

    invoke-direct {v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithOptionalName;->isNamed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_NAME:Ljava/lang/String;

    :goto_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->hasModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget-object v3, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_MODIFIERS:Ljava/lang/Integer;

    :goto_1
    invoke-direct {v0, p1, v1, v2, v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

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
    instance-of v1, p1, Lnet/bytebuddy/description/method/ParameterDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithOptionalName;->isNamed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 4

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v1

    xor-int/2addr v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->hashCode:I

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getModifiers()I

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\[]$"

    const-string v4, "..."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
