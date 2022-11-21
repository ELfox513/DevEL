.class public Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithMethodAttributeAppenderFactory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

.field private final methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public extractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->extractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public inject(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 1

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->delegate:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$WithMethodAttributeAppenderFactory;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->doInject(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    move-result-object p1

    return-object p1
.end method
