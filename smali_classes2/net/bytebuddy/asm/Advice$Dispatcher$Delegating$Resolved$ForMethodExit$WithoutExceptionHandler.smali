.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit$WithoutExceptionHandler;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutExceptionHandler"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/asm/Advice$Delegator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/asm/Advice$Delegator;)V

    return-void
.end method


# virtual methods
.method public getThrowable()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->a()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
