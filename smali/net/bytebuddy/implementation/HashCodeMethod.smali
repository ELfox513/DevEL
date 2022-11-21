.class public Lnet/bytebuddy/implementation/HashCodeMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/HashCodeMethod$Appender;,
        Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;,
        Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard;,
        Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DEFAULT_MULTIPLIER:I = 0x1f

.field private static final DEFAULT_OFFSET:I = 0x11

.field private static final GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final HASH_CODE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
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

.field private final multiplier:I

.field private final nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/implementation/HashCodeMethod;->HASH_CODE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "getClass"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V
    .locals 3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-direct {p0, p1, v2, v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;",
            "I",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iput p2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    iput-object p3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iput-object p4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    return-void
.end method

.method public static synthetic a()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->HASH_CODE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic b()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static usingDefaultOffset()Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingOffset(I)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object v0

    return-object v0
.end method

.method public static usingOffset(I)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    new-instance v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForFixedValue;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForFixedValue;-><init>(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V

    return-object v0
.end method

.method public static usingSuperClassOffset()Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    sget-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V

    return-object v0
.end method

.method public static usingTypeHashOffset(Z)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForStaticTypeHash;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForStaticTypeHash;

    :goto_0
    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 5

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$Appender;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {p1, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/implementation/HashCodeMethod$Appender;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;ILjava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot implement meaningful hash code method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    check-cast p1, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget-object v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/HashCodeMethod;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v3, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method

.method public withMultiplier(I)Lnet/bytebuddy/implementation/Implementation;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hash code multiplier must not be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withNonNullableFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/HashCodeMethod;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v4, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method
