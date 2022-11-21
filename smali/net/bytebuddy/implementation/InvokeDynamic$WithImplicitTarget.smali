.class public Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;
.super Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithImplicitTarget"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;->invoke(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    new-instance v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;

    invoke-direct {v3, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->withNameProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;"
        }
    .end annotation

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitTarget;->invoke(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    new-instance v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;

    invoke-direct {v3, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->withNameProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForExplicitType;

    invoke-direct {v0, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForExplicitType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->withReturnTypeProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public invoke(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    new-instance v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForExplicitType;

    invoke-direct {v3, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider$ForExplicitType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->withReturnTypeProvider(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ReturnTypeProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method
