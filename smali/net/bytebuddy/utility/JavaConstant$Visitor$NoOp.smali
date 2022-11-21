.class public final enum Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Visitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;",
        ">;",
        "Lnet/bytebuddy/utility/JavaConstant$Visitor<",
        "Lnet/bytebuddy/utility/JavaConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p1

    return-object p1
.end method

.method public onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p1

    return-object p1
.end method

.method public onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p1

    return-object p1
.end method

.method public onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p1

    return-object p1
.end method

.method public onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$Simple<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/utility/JavaConstant;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$Visitor$NoOp;->onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/utility/JavaConstant;

    move-result-object p1

    return-object p1
.end method

.method public onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/utility/JavaConstant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$Simple<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaConstant;"
        }
    .end annotation

    return-object p1
.end method
