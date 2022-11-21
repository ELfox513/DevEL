.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final CLASS_TYPE_INTERNAL_NAME:Ljava/lang/String; = "Ljava/lang/Class;"

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final PRIMITIVE_TYPE_FIELD:Ljava/lang/String; = "TYPE"

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;


# instance fields
.field private final fieldOwnerInternalName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v1, Ljava/lang/Void;

    const-string v2, "VOID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v2, Ljava/lang/Boolean;

    const-string v4, "BOOLEAN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v4, Ljava/lang/Byte;

    const-string v6, "BYTE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v6, Ljava/lang/Short;

    const-string v8, "SHORT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v6, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v8, Ljava/lang/Character;

    const-string v10, "CHARACTER"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v10, Ljava/lang/Integer;

    const-string v12, "INTEGER"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v10, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v12, Ljava/lang/Long;

    const-string v14, "LONG"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v12, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v14, Ljava/lang/Float;

    const-string v15, "FLOAT"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    new-instance v14, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const-class v15, Ljava/lang/Double;

    const-string v13, "DOUBLE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    const/16 v13, 0x9

    new-array v13, v13, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    sput-object v13, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->fieldOwnerInternalName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant$ForReferenceType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->BYTE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SHORT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->INTEGER:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->LONG:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->FLOAT:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0

    :cond_8
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->VOID:Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->fieldOwnerInternalName:Ljava/lang/String;

    const/16 v0, 0xb2

    const-string v1, "TYPE"

    const-string v2, "Ljava/lang/Class;"

    invoke-virtual {p1, v0, p2, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
