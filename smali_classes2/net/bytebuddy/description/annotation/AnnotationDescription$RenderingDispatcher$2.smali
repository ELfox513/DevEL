.class final enum Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher$2;
.super Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/annotation/AnnotationDescription$1;)V

    return-void
.end method


# virtual methods
.method public appendPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->appendPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public appendType(Ljava/lang/StringBuilder;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
