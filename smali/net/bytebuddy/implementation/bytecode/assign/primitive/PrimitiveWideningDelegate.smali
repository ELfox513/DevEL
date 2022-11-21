.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;


# instance fields
.field private final toBooleanStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toByteStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toCharacterStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toDoubleStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toFloatStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toIntegerStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toLongStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final toShortStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v11, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    sget-object v13, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    move-object v0, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v13

    move-object v6, v13

    move-object v7, v13

    move-object v8, v13

    move-object v9, v13

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v11, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v14, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    sget-object v15, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v10, 0x85

    invoke-direct {v8, v10, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    sget-object v16, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v7, 0x86

    invoke-direct {v9, v7, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    invoke-direct {v6, v10, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    const-string v1, "BYTE"

    const/4 v2, 0x1

    move-object v0, v14

    move-object v3, v13

    move-object v4, v12

    move-object v5, v12

    move-object/from16 v17, v6

    move-object v6, v13

    move-object v7, v12

    move-object/from16 v19, v11

    const/16 v11, 0x85

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v14, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v17, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v10, 0x86

    invoke-direct {v9, v10, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v6, 0x87

    invoke-direct {v7, v6, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    const-string v1, "SHORT"

    const/4 v2, 0x2

    move-object/from16 v0, v17

    move-object v4, v13

    move-object v6, v13

    move-object/from16 v18, v7

    move-object v7, v12

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v17, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v18, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v10, 0x86

    invoke-direct {v9, v10, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v7, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v6, 0x87

    invoke-direct {v7, v6, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    const-string v1, "CHARACTER"

    const/4 v2, 0x3

    move-object/from16 v0, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v20, v7

    move-object v7, v12

    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v18, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v20, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v1, 0x86

    invoke-direct {v9, v1, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v10, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v1, 0x87

    invoke-direct {v10, v1, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    const-string v1, "INTEGER"

    const/4 v2, 0x4

    move-object/from16 v0, v20

    move-object v6, v13

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v20, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v11, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v9, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v1, 0x89

    invoke-direct {v9, v1, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    new-instance v10, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual/range {v16 .. v16}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v1, 0x8a

    invoke-direct {v10, v1, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    const-string v1, "LONG"

    const/4 v2, 0x5

    move-object v0, v11

    move-object v7, v13

    move-object v8, v12

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v11, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v16, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v10, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    invoke-virtual {v15}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    const/16 v1, 0x8d

    invoke-direct {v10, v1, v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;-><init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V

    const-string v1, "FLOAT"

    const/4 v2, 0x6

    move-object/from16 v0, v16

    move-object v8, v13

    move-object v9, v12

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v16, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    new-instance v15, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    const-string v1, "DOUBLE"

    const/4 v2, 0x7

    move-object v0, v15

    move-object v9, v13

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v15, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    const/16 v0, 0x8

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    const/4 v1, 0x0

    aput-object v19, v0, v1

    const/4 v1, 0x1

    aput-object v14, v0, v1

    const/4 v1, 0x2

    aput-object v17, v0, v1

    const/4 v1, 0x3

    aput-object v18, v0, v1

    const/4 v1, 0x4

    aput-object v20, v0, v1

    const/4 v1, 0x5

    aput-object v11, v0, v1

    const/4 v1, 0x6

    aput-object v16, v0, v1

    const/4 v1, 0x7

    aput-object v15, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toBooleanStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toByteStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toShortStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toCharacterStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p7, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toIntegerStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p8, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toLongStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p9, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toFloatStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p10, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toDoubleStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method

.method public static forPrimitive(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive, non-void type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    return-object v0
.end method


# virtual methods
.method public widenTo(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toBooleanStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toByteStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toShortStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toCharacterStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toIntegerStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toLongStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toFloatStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->toDoubleStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive non-void type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
