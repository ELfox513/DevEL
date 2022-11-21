.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForAbstractMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    return-object v0
.end method


# virtual methods
.method public assemble(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithoutBody;

    invoke-direct {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithoutBody;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)V

    return-object v0
.end method

.method public compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;
    .locals 0

    return-object p0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
