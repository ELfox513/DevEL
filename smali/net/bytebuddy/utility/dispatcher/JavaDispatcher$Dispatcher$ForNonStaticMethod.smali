.class public Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForNonStaticMethod"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/lang/reflect/Method;)I
    .locals 10

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_3

    aget-object v4, p2, v2

    invoke-static {v4}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/Class;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v5

    invoke-virtual {p1, v5, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    aget-object v5, p2, v2

    if-nez v2, :cond_0

    iget-object v6, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v2, -0x1

    aget-object v6, v0, v6

    :goto_1
    if-eq v5, v6, :cond_2

    const/16 v5, 0xc0

    if-nez v2, :cond_1

    iget-object v6, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v2, -0x1

    aget-object v6, v0, v6

    :goto_2
    invoke-static {v6}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0xb9

    const/16 v5, 0xb9

    goto :goto_3

    :cond_4
    const/16 p2, 0xb6

    const/16 v5, 0xb6

    :goto_3
    iget-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    const/16 v0, 0xac

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sub-int/2addr v3, v1

    iget-object p1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
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
    iget-object v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;

    iget-object p1, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->NO_ARGUMENTS:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :goto_0
    invoke-static {}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->a()Lnet/bytebuddy/utility/Invoker;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;->method:Ljava/lang/reflect/Method;

    aget-object p1, p1, v1

    invoke-interface {v2, v3, p1, v0}, Lnet/bytebuddy/utility/Invoker;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
