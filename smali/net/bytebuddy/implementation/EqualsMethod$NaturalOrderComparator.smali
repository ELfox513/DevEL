.class public final enum Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaturalOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;->INSTANCE:Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;->compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
