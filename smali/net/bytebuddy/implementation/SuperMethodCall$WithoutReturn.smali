.class public final enum Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/SuperMethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WithoutReturn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;->$VALUES:[Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;->$VALUES:[Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/SuperMethodCall$WithoutReturn;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;

    sget-object v1, Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;->DROPPING:Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/SuperMethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/SuperMethodCall$Appender$TerminationHandler;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
