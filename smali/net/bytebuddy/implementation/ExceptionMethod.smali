.class public Lnet/bytebuddy/implementation/ExceptionMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final constructionDelegate:Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/ExceptionMethod;->constructionDelegate:Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;

    return-void
.end method

.method public static throwing(Ljava/lang/Class;)Lnet/bytebuddy/implementation/Implementation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/implementation/Implementation;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/ExceptionMethod;->throwing(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p0

    return-object p0
.end method

.method public static throwing(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/implementation/Implementation;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/bytebuddy/implementation/ExceptionMethod;->throwing(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p0

    return-object p0
.end method

.method public static throwing(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation;
    .locals 2

    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/ExceptionMethod;

    new-instance v1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForDefaultConstructor;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForDefaultConstructor;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/ExceptionMethod;-><init>(Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not extend throwable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static throwing(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;
    .locals 2

    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/ExceptionMethod;

    new-instance v1, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;

    invoke-direct {v1, p0, p1}, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate$ForStringConstructor;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/ExceptionMethod;-><init>(Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not extend throwable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    return-object p0
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/ExceptionMethod;->constructionDelegate:Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;

    invoke-interface {v2}, Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;->make()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/Throw;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/Throw;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/ExceptionMethod;->constructionDelegate:Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;

    check-cast p1, Lnet/bytebuddy/implementation/ExceptionMethod;

    iget-object p1, p1, Lnet/bytebuddy/implementation/ExceptionMethod;->constructionDelegate:Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/ExceptionMethod;->constructionDelegate:Lnet/bytebuddy/implementation/ExceptionMethod$ConstructionDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
