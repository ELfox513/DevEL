.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final interfaceGraphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

.field private final superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getInterfaceGraph(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    if-nez p1, :cond_0

    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    :cond_0
    return-object p1
.end method

.method public getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->superClassGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->interfaceGraphs:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v0

    return-object v0
.end method

.method public locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object p1

    return-object p1
.end method
