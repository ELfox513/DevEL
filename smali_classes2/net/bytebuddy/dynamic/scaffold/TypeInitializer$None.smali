.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "None"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 0

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    return-object p1
.end method

.method public expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object v0
.end method

.method public isDefined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 0

    return-object p1
.end method
