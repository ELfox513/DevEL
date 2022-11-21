.class public final enum Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$OfGenericMethod;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;,
        Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum INTERFACE_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field public static final enum VIRTUAL_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;


# instance fields
.field private final handle:I

.field private final legacyHandle:I

.field private final legacyOpcode:I

.field private final opcode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v7, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v1, "VIRTUAL"

    const/4 v2, 0x0

    const/16 v3, 0xb6

    const/4 v4, 0x5

    const/16 v5, 0xb6

    const/4 v6, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v9, "INTERFACE"

    const/4 v10, 0x1

    const/16 v11, 0xb9

    const/16 v12, 0x9

    const/16 v13, 0xb9

    const/16 v14, 0x9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v16, "STATIC"

    const/16 v17, 0x2

    const/16 v18, 0xb8

    const/16 v19, 0x6

    const/16 v20, 0xb8

    const/16 v21, 0x6

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v9, "SPECIAL"

    const/4 v10, 0x3

    const/16 v11, 0xb7

    const/4 v12, 0x7

    const/16 v13, 0xb7

    const/4 v14, 0x7

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v3, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v16, "SPECIAL_CONSTRUCTOR"

    const/16 v17, 0x4

    const/16 v18, 0xb7

    const/16 v19, 0x8

    const/16 v20, 0xb7

    const/16 v21, 0x8

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v9, "VIRTUAL_PRIVATE"

    const/4 v10, 0x5

    const/16 v11, 0xb6

    const/4 v12, 0x5

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v5, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const-string v16, "INTERFACE_PRIVATE"

    const/16 v17, 0x6

    const/16 v18, 0xb9

    const/16 v19, 0x9

    const/16 v21, 0x7

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;-><init>(Ljava/lang/String;IIIII)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/4 v6, 0x7

    new-array v6, v6, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->opcode:I

    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->handle:I

    iput p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyOpcode:I

    iput p6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyHandle:I

    return-void
.end method

.method public static synthetic c(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->opcode:I

    return p0
.end method

.method public static synthetic d(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyOpcode:I

    return p0
.end method

.method public static synthetic f(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->handle:I

    return p0
.end method

.method public static synthetic h(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->legacyHandle:I

    return p0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;
    .locals 2

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$IllegalInvocation;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->STATIC:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    goto :goto_0

    :cond_3
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL_PRIVATE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    :cond_4
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    :cond_5
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$OfGenericMethod;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    return-object v0
.end method
