.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Disabled;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;
    .locals 0

    return-object p0
.end method
