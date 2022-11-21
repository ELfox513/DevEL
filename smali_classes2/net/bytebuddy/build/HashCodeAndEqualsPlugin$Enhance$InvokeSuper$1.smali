.class final enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper$1;
.super Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;-><init>(Ljava/lang/String;ILnet/bytebuddy/build/HashCodeAndEqualsPlugin$1;)V

    return-void
.end method


# virtual methods
.method public equalsMethod(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 2

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->requiringSuperClassEquality()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->isolated()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->requiringSuperClassEquality()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->isolated()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p1

    return-object p1
.end method

.method public hashCodeMethod(Lnet/bytebuddy/description/type/TypeDescription;ZZ)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 2

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingSuperClassOffset()Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    xor-int/lit8 p1, p3, 0x1

    invoke-static {p1}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingTypeHashOffset(Z)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingDefaultOffset()Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingSuperClassOffset()Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    xor-int/lit8 p1, p3, 0x1

    invoke-static {p1}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingTypeHashOffset(Z)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingDefaultOffset()Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    :goto_2
    return-object p1
.end method
