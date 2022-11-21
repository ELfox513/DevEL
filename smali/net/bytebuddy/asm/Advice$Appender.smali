.class public Lnet/bytebuddy/asm/Advice$Appender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Appender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final advice:Lnet/bytebuddy/asm/Advice;

.field private final delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/Advice;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 8

    new-instance v7, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-direct {v7, p1, v0}, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    move-object v3, v7

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice;->doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    invoke-virtual {v7, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->resolve(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Appender;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/asm/Advice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    invoke-virtual {v1}, Lnet/bytebuddy/asm/Advice;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
