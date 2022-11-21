.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfRecordComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfRecordComponent"
.end annotation


# instance fields
.field private recordComponentType:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Raw;

    return-object p0

    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfRecordComponent;

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfRecordComponent;-><init>()V

    :try_start_0
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->acceptType(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfRecordComponent;->resolve()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Malformed;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$Malformed;

    return-object p0
.end method


# virtual methods
.method public register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfRecordComponent;->recordComponentType:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    return-void
.end method

.method public resolve()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent$Tokenized;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature$OfRecordComponent;->recordComponentType:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForRecordComponent$Tokenized;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    return-object v0
.end method
