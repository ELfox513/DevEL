.class public Lnet/bytebuddy/build/AccessControllerPlugin$Initializer$WithoutProperty;
.super Lnet/bytebuddy/build/AccessControllerPlugin$Initializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/AccessControllerPlugin$Initializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutProperty"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer;->hashCode()I

    move-result v0

    return v0
.end method

.method public onAccessController(Lnet/bytebuddy/jar/asm/MethodVisitor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x1

    return p1
.end method
