.class public Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;
.super Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfArgument"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Super type implementation covers use case"
    value = {
        "EQ_DOESNT_OVERRIDE_EQUALS"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;I)V
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
            "I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    iput p7, p0, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;->index:I

    return-void
.end method


# virtual methods
.method public as(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    new-instance v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter$WithExplicitType;

    iget v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;->index:I

    invoke-direct {v3, v4, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter$WithExplicitType;-><init>(ILnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public materialize()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    new-instance v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter;

    iget v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;->index:I

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForMethodParameter;-><init>(I)V

    invoke-interface {v0, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->appendArgument(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method
