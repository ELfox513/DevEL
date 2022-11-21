.class public final enum Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/ShiftRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unsigned"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    const/16 v4, 0x7c

    invoke-direct {v0, v2, v3, v4, v1}, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "LONG"

    const/4 v5, 0x1

    const/16 v6, 0x7d

    invoke-direct {v1, v4, v5, v6, v2}, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

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

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->opcode:I

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
