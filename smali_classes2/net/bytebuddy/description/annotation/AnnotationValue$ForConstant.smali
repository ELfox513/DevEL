.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForConstant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "TU;TU;>;"
    }
.end annotation


# instance fields
.field private transient synthetic hashCode:I

.field private final propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    return-void
.end method

.method public static of(B)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(C)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(D)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(F)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(I)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(J)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    check-cast p0, [Z

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    check-cast p0, [B

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    check-cast p0, [S

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, [C

    if-eqz v0, :cond_c

    check-cast p0, [C

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p0, [I

    if-eqz v0, :cond_d

    check-cast p0, [I

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of v0, p0, [J

    if-eqz v0, :cond_e

    check-cast p0, [J

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of v0, p0, [F

    if-eqz v0, :cond_f

    check-cast p0, [F

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, [D

    if-eqz v0, :cond_10

    check-cast p0, [D

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_10
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_11

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a constant annotation value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(S)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(Z)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([B)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[B[B>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([C)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[C[C>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([D)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[D[D>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([F)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[F[F>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([I)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[I[I>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([J)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[J[J>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([S)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[S[S>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([Z)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[Z[Z>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "TU;TU;>;"
        }
    .end annotation

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->asBoxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toArrayErrorString(Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/Enum;

    if-eqz p2, :cond_2

    new-instance p2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    return-object p2

    :cond_2
    new-instance p2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;->toTypeErrorString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    return-object p2
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asUnboxed()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->hashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->hashCode:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->hashCode:I

    :goto_1
    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 2
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "TU;>;"
        }
    .end annotation

    new-instance p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    invoke-direct {p1, v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object p1
.end method

.method public resolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
