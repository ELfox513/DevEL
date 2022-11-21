.class public final enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnnotationOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

.field public static final enum INSTANCE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;->INSTANCE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;->$VALUES:[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;
    .locals 1

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;->$VALUES:[Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    invoke-virtual {v0}, [Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;->compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I
    .locals 3

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Sorted;

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p2

    const-class v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Sorted;

    invoke-interface {p2, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->c()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->c()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-interface {p2, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    if-le p1, p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-ge p1, p2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
