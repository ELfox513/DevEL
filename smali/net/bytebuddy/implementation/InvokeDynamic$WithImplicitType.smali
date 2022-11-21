.class public abstract Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
.super Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithImplicitType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfField;,
        Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfArgument;,
        Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType$OfInstance;
    }
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

.method public as(Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;->as(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public abstract as(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
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

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
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
