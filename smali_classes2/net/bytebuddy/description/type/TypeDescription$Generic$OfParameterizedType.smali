.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfParameterizedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForGenerifiedErasure;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForReifiedType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$Latent;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;
    }
.end annotation


# instance fields
.field private transient synthetic hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isParameterized()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_3

    if-nez v3, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findBindingOf(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 6
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    move-object v0, p0

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isParameterized()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object p1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A parameterized type does not imply a component type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InGenericShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-direct {v2, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-direct {v2, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$WithResolvedErasure;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-direct {v2, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$WithResolvedErasure;-><init>(Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A parameterized type does not imply lower bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InGenericShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentList$TypeSubstituting;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-direct {v2, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v0, p0, v1, v2}, Lnet/bytebuddy/description/type/RecordComponentList$TypeSubstituting;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->PARAMETERIZED:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    return-object v0
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-direct {v2, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A parameterized type does not imply a symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariableSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A parameterized type does not imply a type variable source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A parameterized type does not imply upper bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    :goto_2
    if-nez v0, :cond_3

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->hashCode:I

    goto :goto_3

    :cond_3
    iput v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->hashCode:I

    :goto_3
    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecord()Z
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->isRecord()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 0

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;->CURRENT:Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$RenderingDelegate;->apply(Ljava/lang/StringBuilder;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
