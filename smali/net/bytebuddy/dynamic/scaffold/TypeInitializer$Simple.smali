.class public Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 5

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDefined()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public wrap(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->prepend(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object p1

    return-object p1
.end method
