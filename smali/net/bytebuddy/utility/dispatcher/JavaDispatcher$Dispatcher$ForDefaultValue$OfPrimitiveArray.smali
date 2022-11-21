.class public final enum Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfPrimitiveArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;",
        ">;",
        "Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum BOOLEAN:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum BYTE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum CHARACTER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum DOUBLE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum FLOAT:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum INTEGER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum LONG:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

.field public static final enum SHORT:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;


# instance fields
.field private final operand:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "BOOLEAN"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->BOOLEAN:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v3, v1, [B

    const-string v5, "BYTE"

    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-direct {v2, v5, v6, v3, v7}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->BYTE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v5, v1, [S

    const-string v8, "SHORT"

    const/4 v9, 0x2

    const/16 v10, 0x9

    invoke-direct {v3, v8, v9, v5, v10}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->SHORT:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v8, v1, [C

    const-string v10, "CHARACTER"

    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-direct {v5, v10, v11, v8, v12}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->CHARACTER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v8, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v10, v1, [I

    const-string v13, "INTEGER"

    const/16 v14, 0xa

    invoke-direct {v8, v13, v4, v10, v14}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v8, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->INTEGER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v13, v1, [J

    const-string v14, "LONG"

    const/16 v15, 0xb

    invoke-direct {v10, v14, v12, v13, v15}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->LONG:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v13, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v14, v1, [F

    const-string v15, "FLOAT"

    const/4 v12, 0x6

    invoke-direct {v13, v15, v12, v14, v12}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v13, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->FLOAT:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-instance v14, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v15, v1, [D

    const-string v12, "DOUBLE"

    const/4 v4, 0x7

    invoke-direct {v14, v12, v4, v15, v4}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;-><init>(Ljava/lang/String;ILjava/lang/Object;I)V

    sput-object v14, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->DOUBLE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    new-array v7, v7, [Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    aput-object v0, v7, v1

    aput-object v2, v7, v6

    aput-object v3, v7, v9

    aput-object v5, v7, v11

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v13, v7, v0

    aput-object v14, v7, v4

    sput-object v7, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->$VALUES:[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->value:Ljava/lang/Object;

    iput p4, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->operand:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->$VALUES:[Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/lang/reflect/Method;)I
    .locals 1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->operand:I

    const/16 v0, 0xbc

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 p2, 0xb0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue$OfPrimitiveArray;->value:Ljava/lang/Object;

    return-object p1
.end method
