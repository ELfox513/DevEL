.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$Visitor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final UNDEFINED:Ljava/lang/reflect/Type;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    return-void
.end method

.method public static of(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->of(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$Visitor;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$Visitor;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    return-object p0
.end method

.method public static parameterizedType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :goto_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parameterizedType(Ljava/lang/Class;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->UNDEFINED:Ljava/lang/reflect/Type;

    invoke-static {p0, v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Ljava/lang/Class;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parameterizedType(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {p0, v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parameterizedType(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 3
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :cond_0
    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {p0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p0}, Lnet/bytebuddy/description/TypeVariableSource;->isGenerified()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " requires an owner type"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not represent required owner for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not define the correct parameters for owning "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_2
    invoke-interface {p0}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not contain number of required parameters for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a parameterized type"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs parameterizedType(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static rawType(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->rawType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static rawType(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->rawType(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static rawType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static rawType(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 2
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a declaring type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not the declaring type of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfNonGenericType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public static typeVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfTypeVariable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static unboundWildcard()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->unboundWildcard(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public static unboundWildcard(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$Latent;->unbounded(Lnet/bytebuddy/description/annotation/AnnotationSource;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method

.method public static unboundWildcard(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->unboundWildcard(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method

.method public static varargs unboundWildcard([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->unboundWildcard(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method

.method public static varargs unboundWildcard([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->unboundWildcard(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public annotate(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public annotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotate(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotate([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotate([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotate(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public asArray()Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asArray(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object v0

    return-object v0
.end method

.method public asArray(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;

    sget-object v2, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;->INSTANCE:Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;

    invoke-direct {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot define an array of a non-positive arity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public asWildcardLowerBound()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardLowerBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public asWildcardLowerBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$Latent;->boundedBelow(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public asWildcardLowerBound(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardLowerBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public varargs asWildcardLowerBound([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardLowerBound(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public varargs asWildcardLowerBound([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardLowerBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public asWildcardUpperBound()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardUpperBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public asWildcardUpperBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfWildcardType$Latent;->boundedAbove(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public asWildcardUpperBound(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardUpperBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public varargs asWildcardUpperBound([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardUpperBound(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public varargs asWildcardUpperBound([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->asWildcardUpperBound(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public build()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public varargs build([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public varargs build([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build(Ljava/util/Collection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public abstract doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation
.end method

.method public abstract doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;
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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
