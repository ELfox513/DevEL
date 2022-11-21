.class public Lnet/bytebuddy/dynamic/Transformer$ForMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;,
        Lnet/bytebuddy/dynamic/Transformer$ForMethod$MethodModifierTransformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/Transformer<",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final transformer:Lnet/bytebuddy/dynamic/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    return-void
.end method

.method public static withModifiers(Ljava/util/List;)Lnet/bytebuddy/dynamic/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/Transformer$ForMethod;

    new-instance v1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$MethodModifierTransformer;

    invoke-static {p0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$MethodModifierTransformer;-><init>(Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/Transformer$ForMethod;-><init>(Lnet/bytebuddy/dynamic/Transformer;)V

    return-object v0
.end method

.method public static varargs withModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ")",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->withModifiers(Ljava/util/List;)Lnet/bytebuddy/dynamic/Transformer;

    move-result-object p0

    return-object p0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    check-cast p1, Lnet/bytebuddy/dynamic/Transformer$ForMethod;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->transformer:Lnet/bytebuddy/dynamic/Transformer;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->transform(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 4

    new-instance v0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-interface {p2}, Lnet/bytebuddy/description/DeclaredByType$WithMandatoryDeclaration;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {p2, v3}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lnet/bytebuddy/dynamic/Transformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-interface {p2}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, p1, v1, v2, p2}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/method/MethodDescription$Token;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method
