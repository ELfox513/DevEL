.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;,
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-direct {v2, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>(Ljava/util/List;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Prepared;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-virtual {v4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->getHandler()Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->getHandler()Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    move-result-object v5

    invoke-interface {v5, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v5

    if-eq p1, v5, :cond_0

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->asSupplementaryEntry(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p1, v5

    goto :goto_0

    :cond_3
    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-static {p2}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->whereNone(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasParameters(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p5, p1}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object p5

    invoke-interface {p2, p5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPublic()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-interface {p2, v3}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-virtual {v8, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v9

    invoke-interface {v9, v3}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getMethodTypes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v7

    invoke-virtual {v8, p1, v3, v4, v7}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->asPreparedEntry(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move v6, v4

    :goto_4
    if-eqz v6, :cond_7

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isMadeVisible()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;->isAbstract()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable;->isFinal()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v3}, Lnet/bytebuddy/description/DeclaredByType$WithMandatoryDeclaration;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPackagePrivate()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p4, v3}, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;->generateVisibilityBridge(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v2

    invoke-static {v3, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->forVisibilityBridge(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p4

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p4, p2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p2

    new-instance p4, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    invoke-direct {p4, p1}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-static {p2, p4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v3

    invoke-interface {v3, p4}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p4}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    invoke-virtual {v2, p1, p4, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;->asPreparedEntry(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    move-result-object v0

    invoke-virtual {v1, p4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-result-object v2

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v3

    invoke-virtual {p3}, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->validated()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    :cond_c
    move-object v4, p1

    new-instance v6, Lnet/bytebuddy/description/method/MethodList$Explicit;

    invoke-direct {v6, p5}, Lnet/bytebuddy/description/method/MethodList$Explicit;-><init>(Ljava/util/List;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;-><init>(Ljava/util/LinkedHashMap;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/description/method/MethodList;)V

    return-object p2
.end method

.method public prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;->entries:Ljava/util/List;

    invoke-static {v1, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default;-><init>(Ljava/util/List;)V

    return-object v0
.end method
