.class public final enum Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ByteBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordObjectMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

.field public static final enum EQUALS:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

.field public static final enum HASH_CODE:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

.field public static final enum TO_STRING:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v7, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    const/4 v2, 0x0

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Class;

    const-string v1, "HASH_CODE"

    const-string v3, "hashCode"

    move-object v0, v7

    move-object v4, v12

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->HASH_CODE:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    new-instance v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    const/16 v18, 0x1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v15

    const-string v17, "EQUALS"

    const-string v19, "equals"

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->EQUALS:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    new-instance v1, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    const/4 v10, 0x2

    const-class v13, Ljava/lang/String;

    new-array v14, v15, [Ljava/lang/Class;

    const-string v9, "TO_STRING"

    const-string v11, "toString"

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->TO_STRING:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    const/4 v3, 0x3

    new-array v3, v3, [Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    aput-object v7, v3, v15

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sput-object v3, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->$VALUES:[Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->name:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {p5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    new-instance p1, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {p1, p6}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->arguments:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->$VALUES:[Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v4}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v5

    invoke-interface {v4}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v5, v4}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v4}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-static {v4}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    const/4 v4, 0x4

    new-array v5, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-instance v6, Lnet/bytebuddy/description/method/MethodDescription$Latent;

    sget-object v9, Lnet/bytebuddy/utility/JavaType;->OBJECT_METHODS:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v9}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    new-instance v10, Lnet/bytebuddy/description/method/MethodDescription$Token;

    const/16 v11, 0x9

    sget-object v12, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/4 v13, 0x6

    new-array v13, v13, [Lnet/bytebuddy/description/type/TypeDescription$Generic;

    sget-object v14, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v14}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    invoke-interface {v14}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v14

    aput-object v14, v13, v7

    sget-object v14, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v14}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v15

    aput-object v15, v13, v8

    sget-object v15, Lnet/bytebuddy/utility/JavaType;->TYPE_DESCRIPTOR:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v15}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v15

    invoke-interface {v15}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v15

    const/4 v8, 0x2

    aput-object v15, v13, v8

    sget-object v15, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v15}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v13, v16

    invoke-interface {v14}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v4, 0x5

    sget-object v14, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v14}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    invoke-static {v14}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v14

    invoke-interface {v14}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v13, "bootstrap"

    invoke-direct {v10, v13, v11, v12, v4}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    invoke-direct {v6, v9, v10}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    invoke-static {v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v4

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->name:Ljava/lang/String;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v10

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->arguments:Ljava/util/List;

    invoke-static {v10, v11}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    new-array v11, v8, [Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    invoke-static {v12}, Lnet/bytebuddy/utility/JavaConstant$Simple;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaConstant$Simple;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v11, v7

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v6, v9, v10, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->dynamic(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    aput-object v1, v5, v8

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    aput-object v1, v5, v16

    invoke-direct {v3, v5}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v3
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
