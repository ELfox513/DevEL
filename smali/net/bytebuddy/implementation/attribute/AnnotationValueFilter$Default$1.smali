.class final enum Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default$1;
.super Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/attribute/AnnotationValueFilter$1;)V

    return-void
.end method


# virtual methods
.method public isRelevant(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Z
    .locals 1

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
