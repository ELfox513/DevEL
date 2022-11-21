.class public Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
.super Lnet/bytebuddy/implementation/MethodCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutSpecifiedTarget"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;)V
    .locals 8

    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation$Factory;

    sget-object v5, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method public on(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->on(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public on(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lnet/bytebuddy/implementation/MethodCall;"
        }
    .end annotation

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForValue$Factory;

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForValue$Factory;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v4, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public on(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodCall;"
        }
    .end annotation

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->on(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public on(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Simple;

    invoke-direct {v2, p2, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;

    invoke-direct {v4, p2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$Factory;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onArgument(I)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    if-ltz p1, :cond_0

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodParameter;

    invoke-direct {v2, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodParameter;-><init>(I)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An argument index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDefault()Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation$Factory;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public onField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Factory;

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Location$ForImplicitField;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Location$ForImplicitField;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    invoke-direct {v2, v0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Factory;-><init>(Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Location;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onField(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public onField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Factory;

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Location$ForExplicitField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Location$ForExplicitField;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    invoke-direct {v2, v0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Factory;-><init>(Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField$Location;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;

    invoke-direct {v2, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;-><init>(Lnet/bytebuddy/implementation/MethodCall;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onSuper()Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation$Factory;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation$Factory;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method
