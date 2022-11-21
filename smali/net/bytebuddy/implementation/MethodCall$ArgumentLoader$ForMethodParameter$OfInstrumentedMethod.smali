.class public final enum Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfInstrumentedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;",
        "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;->$VALUES:[Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

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
    .locals 3
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

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v1

    invoke-direct {v2, v1, p1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter;-><init>(ILnet/bytebuddy/description/method/MethodDescription;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method
