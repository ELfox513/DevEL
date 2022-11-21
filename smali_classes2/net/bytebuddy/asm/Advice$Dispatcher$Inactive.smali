.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inactive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 0

    return-void
.end method

.method public asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 0
    .param p2    # Lnet/bytebuddy/jar/asm/ClassReader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
        }
    .end annotation

    return-object p0
.end method

.method public asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .locals 0
    .param p2    # Lnet/bytebuddy/jar/asm/ClassReader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;"
        }
    .end annotation

    return-object p0
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 0

    return-object p0
.end method

.method public getActualAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public bridge synthetic getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getArgumentHandlerFactory()Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->SIMPLE:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    return-object v0
.end method

.method public getNamedTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->a()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrependLineNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method
