.class public final enum Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;,
        Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->INSTANCE:Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static resolveByScore(I)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0

    :cond_1
    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0
.end method

.method private static resolveRivalBinding(Lnet/bytebuddy/description/type/TypeDescription;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 0

    invoke-interface {p2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->forPrimitive(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    move-result-object p0

    invoke-static {p2}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->forPrimitive(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;->resolve(Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$PrimitiveTypePrecedence;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    :goto_0
    return-object p0

    :cond_2
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    goto :goto_1

    :cond_3
    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    :goto_1
    return-object p0

    :cond_4
    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->RIGHT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0

    :cond_5
    invoke-interface {p2, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->LEFT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0

    :cond_6
    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->AMBIGUOUS:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0

    :cond_7
    sget-object p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->$VALUES:[Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;
    .locals 7

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    new-instance v4, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    invoke-direct {v4, v1}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;-><init>(I)V

    invoke-interface {p2, v4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v6}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6, v5, p2, v4, p3}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->resolveRivalBinding(Lnet/bytebuddy/description/type/TypeDescription;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;ILnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->merge(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->UNKNOWN:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    if-ne v0, p1, :cond_4

    sub-int/2addr v2, v3

    invoke-static {v2}, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;->resolveByScore(I)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v0

    :cond_4
    return-object v0
.end method
