.class public abstract Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForLowerBound;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForUpperBound;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForDirectBound;
    }
.end annotation


# instance fields
.field public final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendDirectBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForDirectBound;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForDirectBound;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method

.method public appendLowerBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForLowerBound;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForLowerBound;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method

.method public appendPlaceholder()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;->parameters:Ljava/util/List;

    sget-object v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForUnboundWildcard;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForUnboundWildcard;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendUpperBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForUpperBound;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase$ForUpperBound;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method
