.class public final enum Lnet/bytebuddy/utility/ConstructorComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/ConstructorComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/ConstructorComparator;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/ConstructorComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/utility/ConstructorComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/ConstructorComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/ConstructorComparator;->INSTANCE:Lnet/bytebuddy/utility/ConstructorComparator;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/utility/ConstructorComparator;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/utility/ConstructorComparator;->$VALUES:[Lnet/bytebuddy/utility/ConstructorComparator;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/ConstructorComparator;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/ConstructorComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/ConstructorComparator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/ConstructorComparator;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/ConstructorComparator;->$VALUES:[Lnet/bytebuddy/utility/ConstructorComparator;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/ConstructorComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/ConstructorComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/ConstructorComparator;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length v1, p1

    array-length v2, p2

    if-ge v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-le v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    return v1
.end method
