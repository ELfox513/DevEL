.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final nodes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;->nodes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static of(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;

    invoke-direct {v3, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;-><init>(Ljava/util/LinkedHashMap;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;->nodes:Ljava/util/LinkedHashMap;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;->nodes:Ljava/util/LinkedHashMap;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;->nodes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;->nodes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;->nodes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    if-nez p1, :cond_0

    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    :cond_0
    return-object p1
.end method
