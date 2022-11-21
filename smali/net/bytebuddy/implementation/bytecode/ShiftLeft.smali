.class public final enum Lnet/bytebuddy/implementation/bytecode/ShiftLeft;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/ShiftLeft;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    const/16 v4, 0x78

    invoke-direct {v0, v2, v3, v4, v1}, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "LONG"

    const/4 v5, 0x1

    const/16 v6, 0x79

    invoke-direct {v1, v4, v5, v6, v2}, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->LONG:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->opcode:I

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/ShiftLeft;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
