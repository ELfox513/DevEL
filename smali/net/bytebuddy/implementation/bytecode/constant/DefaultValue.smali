.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

.field public static final enum VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;


# instance fields
.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/FloatConstant;

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    new-instance v6, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    const-string v10, "VOID"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    sget-object v10, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    const-string v12, "REFERENCE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v8, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    const/4 v10, 0x6

    new-array v10, v10, [Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    :cond_3
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0

    :cond_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
