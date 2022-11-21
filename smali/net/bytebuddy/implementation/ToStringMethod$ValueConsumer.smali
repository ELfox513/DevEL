.class public abstract enum Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/ToStringMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ValueConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum BOOLEAN_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum BYTE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum CHARACTER_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum CHARACTER_SEQUENCE:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum DOUBLE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum FLOAT_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum INTEGER_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum LONG:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum LONG_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum NESTED_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum OBJECT:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum REFERENCE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum SHORT_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

.field public static final enum STRING:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$1;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->BOOLEAN:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v1, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$2;

    const-string v3, "CHARACTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->CHARACTER:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v3, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$3;

    const-string v5, "INTEGER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->INTEGER:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v5, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$4;

    const-string v7, "LONG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->LONG:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v7, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$5;

    const-string v9, "FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->FLOAT:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v9, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$6;

    const-string v11, "DOUBLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->DOUBLE:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v11, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$7;

    const-string v13, "STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->STRING:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v13, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$8;

    const-string v15, "CHARACTER_SEQUENCE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->CHARACTER_SEQUENCE:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v15, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$9;

    const-string v14, "OBJECT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->OBJECT:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v14, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$10;

    const-string v12, "BOOLEAN_ARRAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$10;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->BOOLEAN_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v12, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$11;

    const-string v10, "BYTE_ARRAY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$11;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->BYTE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v10, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$12;

    const-string v8, "SHORT_ARRAY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$12;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->SHORT_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v8, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$13;

    const-string v6, "CHARACTER_ARRAY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$13;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->CHARACTER_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v6, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$14;

    const-string v4, "INTEGER_ARRAY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$14;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->INTEGER_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v4, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$15;

    const-string v2, "LONG_ARRAY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$15;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->LONG_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v2, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$16;

    const-string v6, "FLOAT_ARRAY"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$16;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->FLOAT_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v6, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$17;

    const-string v4, "DOUBLE_ARRAY"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$17;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->DOUBLE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v4, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$18;

    const-string v2, "REFERENCE_ARRAY"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$18;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->REFERENCE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    new-instance v2, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$19;

    const-string v6, "NESTED_ARRAY"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer$19;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->NESTED_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    const/16 v6, 0x13

    new-array v6, v6, [Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    const/16 v16, 0x0

    aput-object v0, v6, v16

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

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->$VALUES:[Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/ToStringMethod$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
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

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->BOOLEAN:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->CHARACTER:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->LONG:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->FLOAT:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->DOUBLE:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_5
    const-class v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->STRING:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_6
    const-class v0, Ljava/lang/CharSequence;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->CHARACTER_SEQUENCE:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_7
    const-class v0, [Z

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->BOOLEAN_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_8
    const-class v0, [B

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->BYTE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_9
    const-class v0, [S

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->SHORT_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_a
    const-class v0, [C

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->CHARACTER_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_b
    const-class v0, [I

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->INTEGER_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_c
    const-class v0, [J

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->LONG_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_d
    const-class v0, [F

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->FLOAT_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_e
    const-class v0, [D

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->DOUBLE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_f
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->NESTED_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    goto :goto_0

    :cond_10
    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->REFERENCE_ARRAY:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    :goto_0
    return-object p0

    :cond_11
    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->OBJECT:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0

    :cond_12
    :goto_1
    sget-object p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->INTEGER:Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->$VALUES:[Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
