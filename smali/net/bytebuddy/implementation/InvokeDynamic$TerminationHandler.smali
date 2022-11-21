.class public abstract enum Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "TerminationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

.field public static final enum DROPPING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

.field public static final enum RETURNING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler$1;

    const-string v1, "RETURNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    new-instance v1, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler$2;

    const-string v3, "DROPPING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->DROPPING:Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/InvokeDynamic$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;

    return-object v0
.end method


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
