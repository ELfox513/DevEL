.class public final Lnet/bytebuddy/dynamic/TargetType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/TargetType;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class only serves as a marker type and should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming component type for array type."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-class v2, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    :cond_1
    return-object p0
.end method
