.class public Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;
.super Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubstitutingMethodVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;
    }
.end annotation


# instance fields
.field private final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private localVariableExtension:I

.field private final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field private final replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

.field private stackSizeBuffer:I

.field private final strict:Z

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final virtualPrivateCalls:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;ZLnet/bytebuddy/asm/MemberSubstitution$Replacement;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)V

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iput-boolean p5, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    iput-object p6, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    iput-object p7, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iput-object p8, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-boolean p9, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->virtualPrivateCalls:Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->localVariableExtension:I

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->localVariableExtension:I

    return p0
.end method

.method public static synthetic b(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;I)I
    .locals 0

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->localVariableExtension:I

    return p1
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v3

    const-string v4, " using "

    const-string v5, "Could not resolve "

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    iget-boolean v3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v3, :cond_0

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v3, v6}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    :goto_0
    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    const/16 v5, 0xb5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v5, :cond_2

    const/16 v5, 0xb3

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-interface {v1, v2, v3, v4, v5}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v2

    if-eqz v2, :cond_6

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    const/4 p2, 0x2

    new-array p2, p2, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    aput-object p3, p2, v6

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    aput-object p3, p2, v7

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_3

    :pswitch_1
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array p2, v7, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    aput-object p3, p2, v6

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    goto :goto_3

    :pswitch_2
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array p2, v7, [Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    aput-object p3, p2, v6

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    sget-object p2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_3

    :pswitch_3
    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {p1}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    :goto_3
    iget p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->getFreeOffset()I

    move-result p4

    invoke-interface {v1, p1, p2, p4}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    new-instance p4, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-direct {p4, p0, v0, v1}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;-><init>(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/MemberSubstitution$1;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {p1, p4, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    return-void

    :cond_3
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMaxs(II)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    add-int/2addr p1, v0

    iget v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->localVariableExtension:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v7

    const-string v8, " using "

    const-string v9, "Could not resolve "

    if-eqz v7, :cond_12

    const/16 v7, 0xb7

    if-ne v1, v7, :cond_1

    const-string v10, "<init>"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    iget-boolean v10, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v10, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    :goto_0
    invoke-interface {v7, v10}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/method/MethodList;

    goto/16 :goto_6

    :cond_1
    const/16 v10, 0xb8

    if-eq v1, v10, :cond_7

    if-ne v1, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-boolean v7, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->virtualPrivateCalls:Z

    if-eqz v7, :cond_5

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    iget-boolean v10, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v10, :cond_3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-static {v11}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v12

    invoke-interface {v11, v12}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    goto :goto_1

    :cond_3
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-static {v11}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v12

    invoke-interface {v11, v12}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    :goto_1
    invoke-interface {v7, v10}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v7, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v10

    iget-object v11, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v7, v10, v11}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    iget-boolean v10, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v10, :cond_4

    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    goto :goto_2

    :cond_4
    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    :goto_2
    invoke-interface {v7, v10}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/method/MethodList;

    goto :goto_6

    :cond_5
    iget-object v7, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v10

    iget-object v11, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v7, v10, v11}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object v7

    invoke-virtual {v7}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    iget-boolean v10, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v10, :cond_6

    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    goto :goto_3

    :cond_6
    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    :goto_3
    invoke-interface {v7, v10}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/method/MethodList;

    goto :goto_6

    :cond_7
    :goto_4
    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v7

    iget-boolean v10, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-eqz v10, :cond_8

    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    goto :goto_5

    :cond_8
    invoke-static/range {p3 .. p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v11

    invoke-interface {v10, v11}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-static {v10}, Lnet/bytebuddy/matcher/ElementMatchers;->failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    :goto_5
    invoke-interface {v7, v10}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/method/MethodList;

    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v11, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->replacement:Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    iget-object v12, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v13, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v1, v5}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->of(ILnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;

    move-result-object v16

    invoke-interface/range {v11 .. v16}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v6

    if-eqz v6, :cond_10

    iget v1, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    new-instance v2, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-interface {v4}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    goto :goto_8

    :cond_b
    :goto_7
    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    :goto_8
    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/DeclaredByType$WithMandatoryDeclaration;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    goto :goto_9

    :cond_c
    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/utility/visitor/LocalVariableAwareMethodVisitor;->getFreeOffset()I

    move-result v4

    invoke-interface {v5, v2, v3, v4}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;-><init>(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/MemberSubstitution$1;)V

    iget-object v4, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {v2, v3, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v2

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_a

    :cond_d
    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    :goto_a
    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    invoke-interface {v7}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v3, 0x6

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v4, 0x0

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/bytecode/Duplication;->flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object v7, v3, v4

    const/4 v4, 0x2

    aput-object v7, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/bytecode/Duplication;->flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v7, v3, v4

    const/4 v4, 0x5

    aput-object v7, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v4, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-virtual {v2, v3, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v2

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->stackSizeBuffer:I

    :cond_e
    return-void

    :cond_f
    iget-boolean v4, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v4, :cond_11

    :cond_10
    move-object/from16 v7, p4

    goto :goto_b

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object/from16 v7, p4

    iget-boolean v4, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->strict:Z

    if-nez v4, :cond_13

    :goto_b
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
