.class public final enum Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForInstrumentedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;",
        "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
    .locals 0

    return-object p0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;",
            ">;"
        }
    .end annotation

    new-instance p2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray;-><init>(Lnet/bytebuddy/description/method/ParameterList;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
