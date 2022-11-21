.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;,
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;,
        Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;


# instance fields
.field private final opcode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v1, "MINUS_ONE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v4, "ZERO"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v7, "ONE"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-instance v7, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v9, "TWO"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v11, "THREE"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-instance v11, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v13, "FOUR"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-instance v13, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    const-string v15, "FIVE"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    new-array v10, v14, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    const/4 v0, 0x5

    aput-object v11, v10, v0

    aput-object v13, v10, v12

    sput-object v10, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->opcode:I

    return-void
.end method

.method public static synthetic c()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    int-to-byte p0, p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;-><init>(B)V

    return-object v0

    :pswitch_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FIVE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->FOUR:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->THREE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->TWO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->MINUS_ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0

    :cond_0
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;

    int-to-short p0, p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$TwoBytePush;-><init>(S)V

    return-object v0

    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$ConstantPool;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
