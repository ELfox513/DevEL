.class Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxingStackManipulation"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->c(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->d(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->f(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xb8

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;->h(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveBoxingDelegate$BoxingStackManipulation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
