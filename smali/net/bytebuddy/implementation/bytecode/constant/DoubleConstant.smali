.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;


# instance fields
.field private final opcode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const-string v3, "ONE"

    const/4 v4, 0x1

    const/16 v5, 0xf

    invoke-direct {v1, v3, v4, v5}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->opcode:I

    return-void
.end method

.method public static synthetic c()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(D)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object p0

    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant$ConstantPool;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/DoubleConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
