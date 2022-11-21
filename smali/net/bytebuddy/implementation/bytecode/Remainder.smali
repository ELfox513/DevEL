.class public final enum Lnet/bytebuddy/implementation/bytecode/Remainder;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Remainder;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Remainder;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Remainder;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/Remainder;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/Remainder;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/Remainder;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Remainder;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "INTEGER"

    const/4 v3, 0x0

    const/16 v4, 0x70

    invoke-direct {v0, v2, v3, v4, v1}, Lnet/bytebuddy/implementation/bytecode/Remainder;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Remainder;->INTEGER:Lnet/bytebuddy/implementation/bytecode/Remainder;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/Remainder;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v5, "LONG"

    const/4 v6, 0x1

    const/16 v7, 0x71

    invoke-direct {v2, v5, v6, v7, v4}, Lnet/bytebuddy/implementation/bytecode/Remainder;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/Remainder;->LONG:Lnet/bytebuddy/implementation/bytecode/Remainder;

    new-instance v5, Lnet/bytebuddy/implementation/bytecode/Remainder;

    const-string v7, "FLOAT"

    const/4 v8, 0x2

    const/16 v9, 0x72

    invoke-direct {v5, v7, v8, v9, v1}, Lnet/bytebuddy/implementation/bytecode/Remainder;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/Remainder;->FLOAT:Lnet/bytebuddy/implementation/bytecode/Remainder;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/Remainder;

    const-string v7, "DOUBLE"

    const/4 v9, 0x3

    const/16 v10, 0x73

    invoke-direct {v1, v7, v9, v10, v4}, Lnet/bytebuddy/implementation/bytecode/Remainder;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/Remainder;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Remainder;

    const/4 v4, 0x4

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/Remainder;

    aput-object v0, v4, v3

    aput-object v2, v4, v6

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/Remainder;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Remainder;

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

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/Remainder;->opcode:I

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/Remainder;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Remainder;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/Remainder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Remainder;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Remainder;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Remainder;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Remainder;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Remainder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Remainder;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Remainder;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Remainder;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
