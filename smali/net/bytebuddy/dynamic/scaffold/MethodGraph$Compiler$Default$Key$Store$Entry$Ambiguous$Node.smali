.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final key:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final visibility:Lnet/bytebuddy/description/modifier/Visibility;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->key:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->key:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->key:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getMethodTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->key:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;->getIdentifiers()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->AMBIGUOUS:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->key:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Entry$Ambiguous$Node;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
