.class Lnet/bytebuddy/build/CachedReturnPlugin$Advice$float;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Name is chosen to optimize for simple lookup"
    value = {
        "NM_CLASS_NAMING_CONVENTION"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is merely an advice template and should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enter(F)F
    .locals 0
    .param p0    # F
        .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$CacheField;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodEnter;
        skipOn = Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;
    .end annotation

    return p0
.end method

.method public static exit(FF)V
    .locals 0
    .param p0    # F
        .annotation runtime Lnet/bytebuddy/asm/Advice$Return;
            readOnly = false
        .end annotation
    .end param
    .param p1    # F
        .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$CacheField;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Advice method serves as a template"
        value = {
            "UC_USELESS_VOID_METHOD",
            "DLS_DEAD_LOCAL_STORE"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/asm/Advice$OnMethodExit;
    .end annotation

    return-void
.end method
