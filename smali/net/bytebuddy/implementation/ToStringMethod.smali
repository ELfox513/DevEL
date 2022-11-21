.class public Lnet/bytebuddy/implementation/ToStringMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;,
        Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;,
        Lnet/bytebuddy/implementation/ToStringMethod$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final STRING_BUILDER_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_STRING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final definer:Ljava/lang/String;

.field private final end:Ljava/lang/String;

.field private final ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

.field private final separator:Ljava/lang/String;

.field private final start:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/ToStringMethod;->STRING_BUILDER_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->TO_STRING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)V
    .locals 7

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    const-string v2, "{"

    const-string v3, "}"

    const-string v4, ", "

    const-string v5, "="

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iput-object p2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    iput-object p6, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    return-void
.end method

.method public static synthetic a()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->STRING_BUILDER_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic b()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->TO_STRING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static prefixedBy(Ljava/lang/String;)Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$ForFixedValue;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$ForFixedValue;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/ToStringMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)V

    return-object v0
.end method

.method public static prefixedByCanonicalClassName()Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;->CANONICAL_CLASS_NAME:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0
.end method

.method public static prefixedByFullyQualifiedClassName()Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;->FULLY_QUALIFIED_CLASS_NAME:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0
.end method

.method public static prefixedBySimpleClassName()Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;->SIMPLE_CLASS_NAME:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/ToStringMethod$Appender;
    .locals 9

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/ToStringMethod$Appender;

    iget-object v4, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iget-object v7, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/implementation/ToStringMethod$Appender;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Prefix for toString method cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot implement meaningful toString method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/ToStringMethod;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/ToStringMethod$Appender;

    move-result-object p1

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/ToStringMethod;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/ToStringMethod;"
        }
    .end annotation

    new-instance v7, Lnet/bytebuddy/implementation/ToStringMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v7
.end method

.method public withTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v7, Lnet/bytebuddy/implementation/ToStringMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iget-object v6, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v7

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Token values cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
