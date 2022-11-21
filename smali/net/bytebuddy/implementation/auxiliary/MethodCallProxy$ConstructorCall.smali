.class public final enum Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConstructorCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall$Appender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;


# instance fields
.field private final objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

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

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    return-void
.end method

.method public static synthetic c(Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->objectTypeDefaultConstructor:Lnet/bytebuddy/description/method/MethodDescription;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$ConstructorCall$Appender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$1;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
