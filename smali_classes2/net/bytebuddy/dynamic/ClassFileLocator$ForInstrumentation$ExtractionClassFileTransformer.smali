.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractionClassFileTransformer"
.end annotation


# static fields
.field private static final DO_NOT_TRANSFORM:[B
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field private volatile binaryRepresentation:[B
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The array is not to be modified by contract"
        value = {
            "VO_VOLATILE_REFERENCE_TO_ARRAY"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final typeName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->typeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBinaryRepresentation()[B
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The array is not to be modified by contract"
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->binaryRepresentation:[B

    return-object v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The array is not modified by class contract."
        value = {
            "EI_EXPOSE_REP",
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    if-eqz p2, :cond_0

    iget-object p3, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->isChildOf(Ljava/lang/ClassLoader;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-interface {p3, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->typeName:Ljava/lang/String;

    const/16 p3, 0x2f

    const/16 p4, 0x2e

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->binaryRepresentation:[B

    :cond_0
    sget-object p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->DO_NOT_TRANSFORM:[B

    return-object p1
.end method
