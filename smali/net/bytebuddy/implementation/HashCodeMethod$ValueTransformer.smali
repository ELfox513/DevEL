.class public abstract enum Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/HashCodeMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ValueTransformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum BOOLEAN_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum BYTE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum CHARACTER_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum DOUBLE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum FLOAT_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum INTEGER_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum LONG:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum LONG_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum NESTED_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum REFERENCE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

.field public static final enum SHORT_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$1;

    const-string v1, "LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->LONG:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v1, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$2;

    const-string v3, "FLOAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->FLOAT:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v3, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$3;

    const-string v5, "DOUBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->DOUBLE:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v5, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$4;

    const-string v7, "BOOLEAN_ARRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->BOOLEAN_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v7, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$5;

    const-string v9, "BYTE_ARRAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->BYTE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v9, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$6;

    const-string v11, "SHORT_ARRAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->SHORT_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v11, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$7;

    const-string v13, "CHARACTER_ARRAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->CHARACTER_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v13, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$8;

    const-string v15, "INTEGER_ARRAY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->INTEGER_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v15, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$9;

    const-string v14, "LONG_ARRAY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->LONG_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v14, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$10;

    const-string v12, "FLOAT_ARRAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$10;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->FLOAT_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v12, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$11;

    const-string v10, "DOUBLE_ARRAY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$11;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->DOUBLE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v10, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$12;

    const-string v8, "REFERENCE_ARRAY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$12;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->REFERENCE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    new-instance v8, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$13;

    const-string v6, "NESTED_ARRAY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer$13;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->NESTED_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    const/16 v6, 0xd

    new-array v6, v6, [Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->$VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/HashCodeMethod$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->LONG:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->FLOAT:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->DOUBLE:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_3
    const-class v0, [Z

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->BOOLEAN_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_4
    const-class v0, [B

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->BYTE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_5
    const-class v0, [S

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->SHORT_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_6
    const-class v0, [C

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->CHARACTER_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_7
    const-class v0, [I

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->INTEGER_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_8
    const-class v0, [J

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->LONG_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_9
    const-class v0, [F

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->FLOAT_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_a
    const-class v0, [D

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->DOUBLE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0

    :cond_b
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->NESTED_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    goto :goto_0

    :cond_c
    sget-object p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->REFERENCE_ARRAY:Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    :goto_0
    return-object p0

    :cond_d
    invoke-static {}, Lnet/bytebuddy/implementation/HashCodeMethod;->a()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->$VALUES:[Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
