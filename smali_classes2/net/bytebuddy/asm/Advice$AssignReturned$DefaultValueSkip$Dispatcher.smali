.class public abstract enum Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

.field public static final enum DOUBLE:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

.field public static final enum FLOAT:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

.field public static final enum INTEGER:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

.field public static final enum LONG:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

.field public static final enum REFERENCE:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$1;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->INTEGER:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    new-instance v1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$2;

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->LONG:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    new-instance v3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$3;

    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->FLOAT:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    new-instance v5, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$4;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->DOUBLE:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    new-instance v7, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$5;

    const-string v9, "REFERENCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->REFERENCE:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Lnet/bytebuddy/jar/asm/MethodVisitor;ILnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
.end method
