.class public final enum Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;",
        ">;",
        "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

.field private static final LEFT:I = 0x0

.field private static final ONLY:I = 0x0

.field private static final RIGHT:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

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

.method private doResolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;",
            ">;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const-string v3, " or "

    const-string v4, " to "

    const-string v5, "Cannot resolve ambiguous delegation of "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v0, v8, :cond_6

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    sget-object v10, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$1;->a:[I

    invoke-interface {p1, p2, v0, v9}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v10, v11

    if-eq v11, v2, :cond_5

    if-eq v11, v8, :cond_4

    if-eq v11, v7, :cond_1

    if-ne v11, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected amount of targets: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->doResolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object p3

    invoke-interface {p1, p2, v0, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object v1

    invoke-interface {p1, p2, v9, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;->merge(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v10, p1

    if-eq p1, v2, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_3

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-object p3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->doResolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->doResolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    sget-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$1;->a:[I

    invoke-interface {p1, p2, v0, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Resolution;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v2, :cond_9

    if-eq p1, v8, :cond_8

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_7

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;->getTarget()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object p3

    :cond_9
    return-object v0

    :cond_a
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->$VALUES:[Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;",
            ">;)",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->doResolve(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object p1

    return-object p1
.end method
