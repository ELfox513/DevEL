.class final enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper$2;
.super Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;-><init>(Ljava/lang/String;ILnet/bytebuddy/build/HashCodeAndEqualsPlugin$1;)V

    return-void
.end method


# virtual methods
.method public equalsMethod(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->requiringSuperClassEquality()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->isolated()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hashCodeMethod(Lnet/bytebuddy/description/type/TypeDescription;ZZ)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingSuperClassOffset()Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    xor-int/lit8 p1, p3, 0x1

    invoke-static {p1}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingTypeHashOffset(Z)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingDefaultOffset()Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object p1

    :goto_0
    return-object p1
.end method
