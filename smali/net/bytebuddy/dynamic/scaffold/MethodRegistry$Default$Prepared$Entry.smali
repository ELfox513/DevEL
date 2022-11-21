.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final attributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

.field private final bridgeMethod:Z

.field private final handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final typeTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private final visibility:Lnet/bytebuddy/description/modifier/Visibility;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/description/modifier/Visibility;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/description/modifier/Visibility;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->attributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->typeTokens:Ljava/util/Set;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    iput-boolean p6, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->bridgeMethod:Z

    return-void
.end method

.method public static forVisibilityBridge(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;
    .locals 8

    new-instance v7, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    invoke-static {p0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, v7

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/description/modifier/Visibility;Z)V

    return-object v7
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
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->bridgeMethod:Z

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->bridgeMethod:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->attributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->attributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->typeTokens:Ljava/util/Set;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->typeTokens:Ljava/util/Set;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public getAppenderFactory()Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->attributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    return-object v0
.end method

.method public getHandler()Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    return-object v0
.end method

.method public getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->attributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->typeTokens:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->bridgeMethod:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isBridgeMethod()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->bridgeMethod:Z

    return v0
.end method

.method public resolveBridgeTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->typeTokens:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Prepared$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method
