.class abstract Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractFieldInstruction"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->getOpcode()I

    move-result p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->a(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->a(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->a(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->a:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->a(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;->resolveSize(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public abstract getOpcode()I
.end method

.method public abstract resolveSize(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
.end method
