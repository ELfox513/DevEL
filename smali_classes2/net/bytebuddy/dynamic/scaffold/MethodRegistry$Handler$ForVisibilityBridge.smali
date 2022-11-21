.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForVisibilityBridge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;->compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A visibility bridge handler must not apply any preparations"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
