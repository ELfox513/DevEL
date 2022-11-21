.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextRegistry"
.end annotation


# instance fields
.field private implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuxiliaryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Lazy value definition is intended."
        value = {
            "UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->getAuxiliaryTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setImplementationContext(Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    return-void
.end method
