.class final enum Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType$7;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/annotation/AnnotationValue$1;)V

    return-void
.end method


# virtual methods
.method public doCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p2, [F

    if-eqz v0, :cond_0

    check-cast p1, [F

    check-cast p2, [F

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([F)I

    move-result p1

    return p1
.end method

.method public toString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
