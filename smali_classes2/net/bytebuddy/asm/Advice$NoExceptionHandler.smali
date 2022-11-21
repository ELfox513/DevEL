.class Lnet/bytebuddy/asm/Advice$NoExceptionHandler;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoExceptionHandler"
.end annotation


# static fields
.field private static final DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class only serves as a marker type and should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method
