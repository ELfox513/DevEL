.class public Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefixingMethodVisitor"
.end annotation


# instance fields
.field private final frames:Z

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final name:Ljava/lang/String;

.field private final offset:I

.field private final token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Ljava/lang/String;IZ)V
    .locals 1

    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p2, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    iput-object p4, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->name:Ljava/lang/String;

    iput p5, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->offset:I

    iput-boolean p6, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->frames:Z

    return-void
.end method


# virtual methods
.method public visitCode()V
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->name:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb2

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0x99

    invoke-virtual {v1, v2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget v1, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->offset:I

    iget-object v2, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v5

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    sget-object v4, Lnet/bytebuddy/utility/JavaType;->ACCESS_CONTROL_CONTEXT:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v4}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v5, 0xc0

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v4, 0xb8

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    const-string v5, "java.security.AccessController"

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/Type;->getOpcode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-boolean v0, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->frames:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v2, 0x3

    invoke-static {}, Lnet/bytebuddy/build/AccessControllerPlugin;->c()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    invoke-static {}, Lnet/bytebuddy/build/AccessControllerPlugin;->c()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lnet/bytebuddy/build/AccessControllerPlugin;->c()[Ljava/lang/Object;

    move-result-object v0

    array-length v5, v0

    invoke-static {}, Lnet/bytebuddy/build/AccessControllerPlugin;->c()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public visitMaxs(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    iget-object v2, p0, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper$PrefixingMethodVisitor;->token:Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method
