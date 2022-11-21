.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyParameterizedReceiverType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType$TypeArgumentList;
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)V
    .locals 1

    iget-object v0, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static synthetic d(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->getTypePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTypePath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInnerClassCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->m(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->getTypePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asListOfNullable(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lnet/bytebuddy/description/TypeVariableSource;->isGenerified()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyNonGenericReceiverType;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_0
    return-object v1
.end method

.method public getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType$TypeArgumentList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType$TypeArgumentList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterizedReceiverType;Ljava/util/List;)V

    return-object v0
.end method
