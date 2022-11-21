.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;
.super Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ReturnTypeTypeRegistrant;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ParameterTypeRegistrant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature<",
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final exceptionTypeTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterTypeTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private returnTypeToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->parameterTypeTokens:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->exceptionTypeTokens:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->parameterTypeTokens:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->returnTypeToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    return-object p1
.end method

.method public static synthetic c(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->exceptionTypeTokens:Ljava/util/List;

    return-object p0
.end method

.method public static extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;

    invoke-direct {v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;-><init>()V

    invoke-static {p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;->extract(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Malformed;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Malformed;

    return-object p0
.end method


# virtual methods
.method public resolve()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;
    .locals 5

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod$Tokenized;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->returnTypeToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->parameterTypeTokens:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->exceptionTypeTokens:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod$Tokenized;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic resolve()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;->resolve()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ExceptionTypeRegistrant;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ParameterTypeRegistrant;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ParameterTypeRegistrant;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;->collectTypeParameter()V

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ReturnTypeTypeRegistrant;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod$ReturnTypeTypeRegistrant;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfMethod;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method
