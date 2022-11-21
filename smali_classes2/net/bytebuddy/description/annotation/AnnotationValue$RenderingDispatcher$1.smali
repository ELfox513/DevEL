.class final enum Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher$1;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ICCZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;-><init>(Ljava/lang/String;ICCZLnet/bytebuddy/description/annotation/AnnotationValue$1;)V

    return-void
.end method


# virtual methods
.method public toSourceString(C)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(D)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(F)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSourceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public toSourceString(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
