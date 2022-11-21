.class public Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
.super Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithImplicitArguments"
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

    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object p1

    return-object p1
.end method

.method public materialize()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;->withoutArguments()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withArgument(I)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withArgument(I)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withArgument([I)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withArgument([I)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method

.method public bridge synthetic withBooleanValue([Z)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withBooleanValue([Z)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withByteValue([B)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withByteValue([B)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withCharacterValue([C)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withCharacterValue([C)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withDoubleValue([D)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withDoubleValue([D)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withEnumeration([Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withEnumeration([Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withField(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withField(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 0

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFloatValue([F)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withFloatValue([F)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withImplicitAndMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withImplicitAndMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withInstance([Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withInstance([Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withIntegerValue([I)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withIntegerValue([I)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withLongValue([J)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withLongValue([J)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withNullValue([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withNullValue([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withNullValue([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withNullValue([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withReference([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withReference([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withShortValue([S)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withShortValue([S)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withThis([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withThis([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withThis([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withThis([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withType([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withType([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withValue([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public withoutArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->bootstrap:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->arguments:Ljava/util/List;

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->invocationProvider:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;->withoutArguments()Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->terminationHandler:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, p0, Lnet/bytebuddy/implementation/InvokeDynamic;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v7
.end method
