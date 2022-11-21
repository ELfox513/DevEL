.class public final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/FunctionMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Windows32BitFunctionMapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;",
        ">;",
        "Lcom/sun/jna/FunctionMapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Windows32BitFunctionMapper;

    return-object v0
.end method


# virtual methods
.method public getFunctionName(Lcom/sun/jna/NativeLibrary;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JVM_DefineClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_JVM_DefineClass@24"

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
