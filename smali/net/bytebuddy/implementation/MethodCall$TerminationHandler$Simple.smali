.class public abstract enum Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
.implements Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;",
        "Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

.field public static final enum DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

.field public static final enum IGNORING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

.field public static final enum RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$1;

    const-string v1, "RETURNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    new-instance v1, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$2;

    const-string v3, "DROPPING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    new-instance v3, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$3;

    const-string v5, "IGNORING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->IGNORING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/MethodCall$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;
    .locals 0

    return-object p0
.end method

.method public prepare()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object v0
.end method
